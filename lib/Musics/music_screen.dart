// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:kids_learning/Musics/music_vm.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/textStyle.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> with WidgetsBindingObserver {
  MusicVM viewModel = MusicVM();
  AudioPlayer _player = AudioPlayer();
  bool isPlay = false;
  bool isShowMusic = false;
  MusicModel? model;
  int selectedIndex = -1;
  bool _isDisposed = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    _player.playerStateStream.listen((state) {
      if (_isDisposed) return;

      final isPlaying = state.playing;
      final isCompleted = state.processingState == ProcessingState.completed;

      setState(() {
        isPlay = isPlaying;
        if (isCompleted) {
          selectedIndex = -1;
          _player.stop();
          isShowMusic = false;
        }
      });
    });
  }

  @override
  void dispose() {
    _isDisposed = true;
    WidgetsBinding.instance.removeObserver(this);
    _player.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.inactive) {
      _player.pause();
    }
  }

  Future<void> _playTrack(MusicModel music) async {
    setState(() {
      isShowMusic = true;
    });
    try {
      await _player.setAsset(music.musicUrl);
      await _player.seek(Duration.zero); // Reset position
      await _player.play();
      setState(() {
        model = music;
      });
    } catch (e) {
      print('Error playing track: $e');
    }
  }

  Future<void> _stopPlayback() async {
    await _player.stop();
    if (mounted) {
      setState(() {
        isPlay = false;
        selectedIndex = -1;
        isShowMusic = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        await _stopPlayback(); // Stop music when navigating back
        return true;
      },
      child: Scaffold(
        backgroundColor: AppColors.skyBlue.withOpacity(0.99),
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                height: 70,
                decoration: const BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40))),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.4,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    children: [
                      SizedBox(height: 60),
                      Text("Let's listen to the rhymes",
                          style: CustomTextStyle.semibold
                              .copyWith(color: AppColors.black, fontSize: 27)),
                      const SizedBox(height: 10),
                      Expanded(
                        child: ListView.builder(
                            itemCount: viewModel.musicList.length,
                            padding: EdgeInsets.only(bottom: 120),
                            itemBuilder: (context, index) {
                              bool isSelected =
                                  selectedIndex == index && isPlay;
                              return Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 15),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlue.shade50,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 7,
                                            offset: Offset(0, 5),
                                            color: AppColors.skyBlue)
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                                width: 60,
                                                height: 60,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Image.asset(
                                                      "assets/images/homeIcon/musics.png"),
                                                )),
                                            Text(
                                              viewModel.musicList[index].title,
                                              style: CustomTextStyle.semibold
                                                  .copyWith(
                                                      fontSize: 16,
                                                      color: AppColors
                                                          .textTitleColor),
                                            )
                                          ],
                                        ),
                                        InkWell(
                                          onTap: () async {
                                            if (selectedIndex == index) {
                                              // Toggle play/pause
                                              if (isPlay) {
                                                await _player.pause();
                                              } else {
                                                await _player.play();
                                              }
                                            } else {
                                              selectedIndex = index;
                                              await _playTrack(
                                                  viewModel.musicList[index]);
                                            }

                                            if (mounted) {
                                              setState(() {
                                                isPlay = _player.playing;
                                              });
                                            }
                                          },
                                          child: Icon(
                                              isSelected && isPlay
                                                  ? Icons.pause
                                                  : Icons.play_arrow,
                                              size: 30,
                                              color: AppColors.textTitleColor),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset("assets/images/homeIcon/music3.png",
                      width: 250)),
              if (isShowMusic)
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.black26,
                            offset: Offset(0, -2),
                          )
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StreamBuilder<Duration>(
                          stream: _player.positionStream,
                          builder: (context, snapshot) {
                            final position = snapshot.data ?? Duration.zero;
                            final total =
                                _player.duration ?? Duration(seconds: 1);
                            String _formatDuration(Duration d) {
                              final minutes = d.inMinutes
                                  .remainder(60)
                                  .toString()
                                  .padLeft(2, '0');
                              final seconds = d.inSeconds
                                  .remainder(60)
                                  .toString()
                                  .padLeft(2, '0');
                              return "$minutes:$seconds";
                            }

                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(_formatDuration(position),
                                          style: TextStyle(fontSize: 12)),
                                      Expanded(
                                        child: Slider(
                                          activeColor: AppColors.skyBlue,
                                          inactiveColor: AppColors.skyBlue
                                              .withOpacity(0.3),
                                          min: 0,
                                          max: total.inMilliseconds.toDouble(),
                                          value: position.inMilliseconds
                                              .clamp(0, total.inMilliseconds)
                                              .toDouble(),
                                          onChanged: (value) {
                                            _player.seek(Duration(
                                                milliseconds: value.toInt()));
                                          },
                                        ),
                                      ),
                                      Text(_formatDuration(total),
                                          style: TextStyle(fontSize: 12)),
                                      IconButton(
                                        icon: Icon(
                                          isPlay
                                              ? Icons.pause_circle
                                              : Icons.play_circle,
                                          size: 45,
                                          color: AppColors.skyBlue,
                                        ),
                                        onPressed: () async {
                                          if (isPlay) {
                                            await _player.pause();
                                          } else {
                                            await _player.play();
                                          }
                                          if (mounted) {
                                            setState(() {
                                              isPlay = _player.playing;
                                            });
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
