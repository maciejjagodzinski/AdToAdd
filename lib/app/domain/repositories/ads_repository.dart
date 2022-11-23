import 'dart:io';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:sovotest/remote_data_sources/todo_remote_data_source.dart';

class AdsRepository {
  AdsRepository({
    required this.toDoRemoteDataSource,
  });
  BannerAd? _bannerAd;
  InterstitialAd? _interstitialAd;
  RewardedAd? _rewardedAd;

  final ToDoRemoteDataSource toDoRemoteDataSource;

  void loadRewardedAd() {
    RewardedAd.load(
        adUnitId: Platform.isIOS
            ? "ca-app-pub-3940256099942544/1712485313"
            : "ca-app-pub-3940256099942544/5224354917",
        request: const AdRequest(),
        rewardedAdLoadCallback:
            RewardedAdLoadCallback(onAdLoaded: (RewardedAd ad) {
          _rewardedAd = ad;
        }, onAdFailedToLoad: (LoadAdError error) {
          _rewardedAd = null;
        }));
  }

  void addAds(bool interstitial, bool bannerAd, bool rewardedAd) {
    if (rewardedAd) {
      loadRewardedAd();
    }
  }

  void showRewardedAd() {
    if (_rewardedAd != null) {
      _rewardedAd!.fullScreenContentCallback = FullScreenContentCallback(
          onAdShowedFullScreenContent: (RewardedAd ad) {},
          onAdDismissedFullScreenContent: (RewardedAd ad) {
            ad.dispose();
            loadRewardedAd();
          },
          onAdFailedToShowFullScreenContent: (RewardedAd ad, AdError error) {
            ad.dispose();
            loadRewardedAd();
          });

      _rewardedAd!.setImmersiveMode(true);
      _rewardedAd!.show(
          onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {
        toDoRemoteDataSource.addTaskPoints();
      });
    }
  }

  void disposeAds() {
    _bannerAd?.dispose();
    _interstitialAd?.dispose();
    _rewardedAd?.dispose();
  }
}
