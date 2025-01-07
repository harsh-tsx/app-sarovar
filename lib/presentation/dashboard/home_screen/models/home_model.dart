import '../../../../core/app_export.dart';
import 'loverelationlistsection_item_model.dart';
import 'userprofilelistsection_item_model.dart';
import 'seventynine_item_model.dart';
import 'vivekcardlistsection_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<LoverelationlistsectionItemModel>> loverelationlistsectionItemList =
      Rx([
    LoverelationlistsectionItemModel(
        loveRelation: ImageConstant.imgPlay.obs,
        loveRelation1: "Vedic Astrologers".obs),
    LoverelationlistsectionItemModel(
        loveRelation: ImageConstant.flastDeals.obs,
        loveRelation1: "Prashna Kundali Astrologers".obs),
    LoverelationlistsectionItemModel(
        loveRelation: ImageConstant.img3011418CoupleLoveIcon.obs,
        loveRelation1: "Horoscope Astrologers".obs),
    LoverelationlistsectionItemModel(
        loveRelation: ImageConstant.img3011418CoupleLoveIcon.obs,
        loveRelation1: "Match-Making Astrologers".obs),
    LoverelationlistsectionItemModel(
        loveRelation: ImageConstant.img3011418CoupleLoveIcon.obs,
        loveRelation1: "Nadi Astrologers".obs),
    LoverelationlistsectionItemModel(
        loveRelation: ImageConstant.img3011418CoupleLoveIcon.obs,
        loveRelation1: "Transit Astrologers".obs),
    LoverelationlistsectionItemModel(
        loveRelation: ImageConstant.img3011418CoupleLoveIcon.obs,
        loveRelation1: "Medical Astrologers".obs),
    LoverelationlistsectionItemModel(
        loveRelation: ImageConstant.img3011418CoupleLoveIcon.obs,
        loveRelation1: "Muhurat Astrologers".obs),
    LoverelationlistsectionItemModel(
        loveRelation: ImageConstant.img3011418CoupleLoveIcon.obs,
        loveRelation1: "Vastu Shastra Astrologers".obs),
    LoverelationlistsectionItemModel(
        loveRelation: ImageConstant.img3011418CoupleLoveIcon.obs,
        loveRelation1: "Palmistry Astrologers".obs),
    LoverelationlistsectionItemModel(
        loveRelation: ImageConstant.img3011418CoupleLoveIcon.obs,
        loveRelation1: "Numerology Astrologers".obs),
    LoverelationlistsectionItemModel(
        loveRelation: ImageConstant.img3011418CoupleLoveIcon.obs,
        loveRelation1: "Gemology Astrologers".obs),
  ]);

  Rx<List<OnlineAstrologerModel>> userprofilelistsectionItemList = Rx([
    OnlineAstrologerModel(
        play: ImageConstant.imgPlayLightGreenA700.obs,
        circleImage: ImageConstant.imgRectangle76.obs,
        ratingText: "5".obs,
        nameText: "Astro Vivek K".obs,
        experienceText: "Exp: 3 Years".obs,
        image1: ImageConstant.imgVectorGreen900.obs,
        image2: ImageConstant.imgVectorGreen90022x23.obs,
        image3: ImageConstant.imgGroup38.obs),
    OnlineAstrologerModel(
        circleImage: ImageConstant.imgRectangle761.obs,
        ratingText: "5".obs,
        nameText: "Dharmik shree".obs,
        experienceText: "Exp: 3 Years".obs),
    OnlineAstrologerModel(nameText: "Sujoy sen".obs)
  ]);

  Rx<List<HoroScopeSign>> horoscopeSigns = Rx([
    HoroScopeSign(
        userImage: ImageConstant.imgLeo.obs,
        userName: "Aries".obs,
        id: "1".obs),
    HoroScopeSign(
        userImage: ImageConstant.imgPlayPurple900.obs,
        userName: "Taurus".obs,
        id: "2".obs),
    HoroScopeSign(
        userImage: ImageConstant.imgCancer.obs,
        userName: "Gemini".obs,
        id: "3".obs),
    HoroScopeSign(
        userImage: ImageConstant.imgCancer.obs,
        userName: "Cancer".obs,
        id: "4".obs),
    HoroScopeSign(
        userImage: ImageConstant.imgCancer.obs,
        userName: "Leo".obs,
        id: "5".obs),
    HoroScopeSign(
        userImage: ImageConstant.imgCancer.obs,
        userName: "Virgo".obs,
        id: "6".obs),
    HoroScopeSign(
        userImage: ImageConstant.imgCancer.obs,
        userName: "Libra".obs,
        id: "7".obs),
    HoroScopeSign(
        userImage: ImageConstant.imgCancer.obs,
        userName: "Scorpio".obs,
        id: "8".obs),
    HoroScopeSign(
        userImage: ImageConstant.imgCancer.obs,
        userName: "Sagittarius".obs,
        id: "9".obs),
    HoroScopeSign(
        userImage: ImageConstant.imgCancer.obs,
        userName: "Capricorn".obs,
        id: "10".obs),
    HoroScopeSign(
        userImage: ImageConstant.imgCancer.obs,
        userName: "Aquarius".obs,
        id: "11".obs),
    HoroScopeSign(
        userImage: ImageConstant.imgCancer.obs,
        userName: "Pisces".obs,
        id: "12".obs),
  ]);

  Rx<List<HoroScopeSign>> trendingServices = Rx([
    HoroScopeSign(
        userImage: ImageConstant.imgLeo.obs,
        userName: "Horoscope".obs,
        route: AppRoutes.dailyHoroscopeRoute.obs),
    HoroScopeSign(
        userImage: ImageConstant.imgPlayPurple900.obs,
        userName: "Kundli".obs,
        route: AppRoutes.kundlimatchingFormRoute.obs),
    HoroScopeSign(
        userImage: ImageConstant.imgCancer.obs,
        userName: "Panchang".obs,
        route: AppRoutes.panchangFormRoute.obs),
    HoroScopeSign(
        userImage: ImageConstant.imgCancer.obs,
        userName: "Tarot Reading".obs,
        route: "".obs),
  ]);

  Rx<List<VivekcardlistsectionItemModel>> vivekcardlistsectionItemList = Rx([
    VivekcardlistsectionItemModel(
        userImage: ImageConstant.astrologer.obs,
        ratingText: "5".obs,
        nameText: "Astro Acharya".obs,
        timeText: "30/min".obs,
        astroImage: ImageConstant.imgGroupOnerror.obs),
    VivekcardlistsectionItemModel(
        userImage: ImageConstant.imgRectangle764.obs,
        ratingText: "5".obs,
        nameText: "Acharya Anu".obs,
        timeText: "30/min".obs,
        astroImage: ImageConstant.imgGroup38.obs),
    VivekcardlistsectionItemModel(
        userImage: ImageConstant.imgRectangle765.obs,
        ratingText: "5".obs,
        nameText: "Dharmik shree".obs,
        timeText: "30/min".obs,
        astroImage: ImageConstant.imgGroupOnerror.obs),
    VivekcardlistsectionItemModel(
        userImage: ImageConstant.imgRectangle762.obs,
        ratingText: "5".obs,
        nameText: "Sujoy sen".obs,
        timeText: "30/min".obs)
  ]);
}
