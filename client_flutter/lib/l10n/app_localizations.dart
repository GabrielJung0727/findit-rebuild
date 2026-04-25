import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ko.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ko')
  ];

  /// No description provided for @admission.
  ///
  /// In en, this message translates to:
  /// **'Enter'**
  String get admission;

  /// No description provided for @alreadybuy.
  ///
  /// In en, this message translates to:
  /// **'You have already purchased this.'**
  String get alreadybuy;

  /// No description provided for @alreadylearn.
  ///
  /// In en, this message translates to:
  /// **'You have already learned this.'**
  String get alreadylearn;

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Findit'**
  String get appName;

  /// No description provided for @autologin.
  ///
  /// In en, this message translates to:
  /// **'Automatic login'**
  String get autologin;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @breakdown.
  ///
  /// In en, this message translates to:
  /// **'View purchase details.'**
  String get breakdown;

  /// No description provided for @buy.
  ///
  /// In en, this message translates to:
  /// **'Purchase'**
  String get buy;

  /// No description provided for @buyitem.
  ///
  /// In en, this message translates to:
  /// **'You need coins to buy items. Do you wish to purchase coins?'**
  String get buyitem;

  /// No description provided for @buyitem1.
  ///
  /// In en, this message translates to:
  /// **'The cost will be KRW. Do you wish to make this purchase?'**
  String get buyitem1;

  /// No description provided for @buylistTitle.
  ///
  /// In en, this message translates to:
  /// **' purchase details'**
  String get buylistTitle;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @consent.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get consent;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @deleteitem.
  ///
  /// In en, this message translates to:
  /// **'Do you want to discard this item?'**
  String get deleteitem;

  /// No description provided for @dlgMsgPaymentCancelled.
  ///
  /// In en, this message translates to:
  /// **'Payment has been canceled.'**
  String get dlgMsgPaymentCancelled;

  /// No description provided for @dlgMsgPaymentSuccess.
  ///
  /// In en, this message translates to:
  /// **'The payment was successful'**
  String get dlgMsgPaymentSuccess;

  /// No description provided for @dlgTitlePaymentCancelled.
  ///
  /// In en, this message translates to:
  /// **'Payment canceled'**
  String get dlgTitlePaymentCancelled;

  /// No description provided for @dlgTitlePaymentError.
  ///
  /// In en, this message translates to:
  /// **'Payment error'**
  String get dlgTitlePaymentError;

  /// No description provided for @dlgTitlePaymentSuccess.
  ///
  /// In en, this message translates to:
  /// **'Payment success'**
  String get dlgTitlePaymentSuccess;

  /// No description provided for @dlgTitleSamsungaccountAuthentication.
  ///
  /// In en, this message translates to:
  /// **'SamsungAccount authentication'**
  String get dlgTitleSamsungaccountAuthentication;

  /// No description provided for @downloadAfter.
  ///
  /// In en, this message translates to:
  /// **'Download later'**
  String get downloadAfter;

  /// No description provided for @downloadMsg.
  ///
  /// In en, this message translates to:
  /// **'Please download a new battle game image. Costs may be incurred when using 3G or 4G.'**
  String get downloadMsg;

  /// No description provided for @downloadNow.
  ///
  /// In en, this message translates to:
  /// **'Download now'**
  String get downloadNow;

  /// No description provided for @downloadTitle.
  ///
  /// In en, this message translates to:
  /// **'[Download Image]'**
  String get downloadTitle;

  /// No description provided for @downloadfileCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel download'**
  String get downloadfileCancel;

  /// No description provided for @downloadfileMsg.
  ///
  /// In en, this message translates to:
  /// **'Downloading image.'**
  String get downloadfileMsg;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'E-mail'**
  String get email;

  /// No description provided for @friendid.
  ///
  /// In en, this message translates to:
  /// **'Friend\'s ID'**
  String get friendid;

  /// No description provided for @guestAdmission.
  ///
  /// In en, this message translates to:
  /// **'Guest entry'**
  String get guestAdmission;

  /// No description provided for @guestMsg.
  ///
  /// In en, this message translates to:
  /// **'Sign up to save your experience levels and items.'**
  String get guestMsg;

  /// No description provided for @guestMsgLogin.
  ///
  /// In en, this message translates to:
  /// **'\tYou must log in.\t'**
  String get guestMsgLogin;

  /// No description provided for @guestTitle.
  ///
  /// In en, this message translates to:
  /// **'[Guest Entry]'**
  String get guestTitle;

  /// No description provided for @hello.
  ///
  /// In en, this message translates to:
  /// **'Hello World, GameActivity!'**
  String get hello;

  /// No description provided for @id.
  ///
  /// In en, this message translates to:
  /// **'ID'**
  String get id;

  /// No description provided for @identifyOverlap.
  ///
  /// In en, this message translates to:
  /// **'Check for repetition'**
  String get identifyOverlap;

  /// No description provided for @identifyPassword.
  ///
  /// In en, this message translates to:
  /// **'Check password'**
  String get identifyPassword;

  /// No description provided for @inAppPurchase.
  ///
  /// In en, this message translates to:
  /// **'In-app purchase'**
  String get inAppPurchase;

  /// No description provided for @invalidIapPackage.
  ///
  /// In en, this message translates to:
  /// **'IAP Application installed in your device is not valid!!'**
  String get invalidIapPackage;

  /// No description provided for @invite.
  ///
  /// In en, this message translates to:
  /// **'Invite'**
  String get invite;

  /// No description provided for @item.
  ///
  /// In en, this message translates to:
  /// **'Item'**
  String get item;

  /// No description provided for @itemBerry01.
  ///
  /// In en, this message translates to:
  /// **'Exploding berry\nThis attack uses an exploding berry. Bombs explode on your opponent’s game screen.'**
  String get itemBerry01;

  /// No description provided for @itemBerry02.
  ///
  /// In en, this message translates to:
  /// **'Flame berry\nThis attack uses a flame berry. Flames appear on your opponent’s game screen'**
  String get itemBerry02;

  /// No description provided for @itemBerry03.
  ///
  /// In en, this message translates to:
  /// **'Snowflake berry\nThis attack uses a snowflake berry. Snowflakes fall on your opponent’s game screen.'**
  String get itemBerry03;

  /// No description provided for @itemBerry21.
  ///
  /// In en, this message translates to:
  /// **'Powerful exploding berry\nThis attack uses a powerful exploding berry. Bombs explode on your opponent’s game screen.'**
  String get itemBerry21;

  /// No description provided for @itemBerry22.
  ///
  /// In en, this message translates to:
  /// **'Powerful flame berry\nThis attack uses a powerful flame berry. Flames appear on your opponent’s game screen.'**
  String get itemBerry22;

  /// No description provided for @itemBerry23.
  ///
  /// In en, this message translates to:
  /// **'Powerful snowflake berry\nThis attack uses a powerful snowflake berry. Snowflakes fall on the opposition\'s game screen.'**
  String get itemBerry23;

  /// No description provided for @itemEtc0.
  ///
  /// In en, this message translates to:
  /// **'Other items 0'**
  String get itemEtc0;

  /// No description provided for @itemEtc1.
  ///
  /// In en, this message translates to:
  /// **'Other items 1'**
  String get itemEtc1;

  /// No description provided for @itemEtc2.
  ///
  /// In en, this message translates to:
  /// **'Other items 2'**
  String get itemEtc2;

  /// No description provided for @itemGold0.
  ///
  /// In en, this message translates to:
  /// **'100 coin'**
  String get itemGold0;

  /// No description provided for @itemGold1.
  ///
  /// In en, this message translates to:
  /// **'250 coin'**
  String get itemGold1;

  /// No description provided for @itemGold2.
  ///
  /// In en, this message translates to:
  /// **'500 coin'**
  String get itemGold2;

  /// No description provided for @itemGold3.
  ///
  /// In en, this message translates to:
  /// **'650 coin'**
  String get itemGold3;

  /// No description provided for @itemPen01.
  ///
  /// In en, this message translates to:
  /// **'General pen\nThis is a general pen and increases your skill attack effects.'**
  String get itemPen01;

  /// No description provided for @itemPen02.
  ///
  /// In en, this message translates to:
  /// **'Winged pen\nThis pen has wings attached. It increases your skill attack effects by a lot.'**
  String get itemPen02;

  /// No description provided for @itemPen03.
  ///
  /// In en, this message translates to:
  /// **'Rainbow pen\nThis pen shines with the mysterious colors of rainbow. It increases your skill attack effects remarkably.'**
  String get itemPen03;

  /// No description provided for @itemPotion01.
  ///
  /// In en, this message translates to:
  /// **'Defense potion\nThis potion increases defensive effects a little bit during a single game.'**
  String get itemPotion01;

  /// No description provided for @itemPotion02.
  ///
  /// In en, this message translates to:
  /// **'Good defense potion\nThis potion increases defensive effects during a single game.'**
  String get itemPotion02;

  /// No description provided for @itemPotion03.
  ///
  /// In en, this message translates to:
  /// **'Premium defense potion\nThis potion increases defensive effects by a little for one week.'**
  String get itemPotion03;

  /// No description provided for @itemPotion21.
  ///
  /// In en, this message translates to:
  /// **'Large good defense potion\nThis potion increases defensive effects significantly during a single game.'**
  String get itemPotion21;

  /// No description provided for @itemPotion22.
  ///
  /// In en, this message translates to:
  /// **'Large premium defense potion\nThis potion increases defensive effects significantly for one week.'**
  String get itemPotion22;

  /// No description provided for @itemRing01.
  ///
  /// In en, this message translates to:
  /// **'Silver ring\nMade with shining silver, this ring slightly reduces your opponent\'s attack effects.'**
  String get itemRing01;

  /// No description provided for @itemRing02.
  ///
  /// In en, this message translates to:
  /// **'Gold ring\nMade with brilliant gold, this ring greatly reduces your opponent\'s attack effects.'**
  String get itemRing02;

  /// No description provided for @itemRing03.
  ///
  /// In en, this message translates to:
  /// **'Ring item 2'**
  String get itemRing03;

  /// No description provided for @join.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get join;

  /// No description provided for @join1.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get join1;

  /// No description provided for @lackcoin.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have enough coins.'**
  String get lackcoin;

  /// No description provided for @lackpoint.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have enough points.'**
  String get lackpoint;

  /// No description provided for @learn.
  ///
  /// In en, this message translates to:
  /// **'Learn'**
  String get learn;

  /// No description provided for @learnskill.
  ///
  /// In en, this message translates to:
  /// **'Points will be consumed. Do you wish to learn this?'**
  String get learnskill;

  /// No description provided for @list.
  ///
  /// In en, this message translates to:
  /// **'List'**
  String get list;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @loginTitle.
  ///
  /// In en, this message translates to:
  /// **'[Login]'**
  String get loginTitle;

  /// No description provided for @makebattleroom.
  ///
  /// In en, this message translates to:
  /// **'Create\nbattle room'**
  String get makebattleroom;

  /// No description provided for @msgAuthenticationHasBeenCancelled.
  ///
  /// In en, this message translates to:
  /// **'SamsungAccount authentication has been cancelled'**
  String get msgAuthenticationHasBeenCancelled;

  /// No description provided for @msgFailedToInitializeIap.
  ///
  /// In en, this message translates to:
  /// **'Failed to initialize the in-app purchase.'**
  String get msgFailedToInitializeIap;

  /// No description provided for @msgFailedToLoadListOfProduct.
  ///
  /// In en, this message translates to:
  /// **'Failed to load list of product'**
  String get msgFailedToLoadListOfProduct;

  /// No description provided for @msgFailedToLoadListOfPurchase.
  ///
  /// In en, this message translates to:
  /// **'Failed to load list of purchase'**
  String get msgFailedToLoadListOfPurchase;

  /// No description provided for @msgIapIsNotInstalled.
  ///
  /// In en, this message translates to:
  /// **'IAP is not installed. Install?'**
  String get msgIapIsNotInstalled;

  /// No description provided for @msgIapServiceBindFailed.
  ///
  /// In en, this message translates to:
  /// **'In-app Purchase Service Bind failed.'**
  String get msgIapServiceBindFailed;

  /// No description provided for @msgIapUpgradeIsRequred.
  ///
  /// In en, this message translates to:
  /// **'In-app Purchase upgrade is required.'**
  String get msgIapUpgradeIsRequred;

  /// No description provided for @msgInvalidPurchase.
  ///
  /// In en, this message translates to:
  /// **'Payment is not valid!!'**
  String get msgInvalidPurchase;

  /// No description provided for @msgPaymentWasNotProcessedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'The payment was not processed successfully.'**
  String get msgPaymentWasNotProcessedSuccessfully;

  /// No description provided for @nickname.
  ///
  /// In en, this message translates to:
  /// **'Nickname'**
  String get nickname;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @notice.
  ///
  /// In en, this message translates to:
  /// **'[Notice]'**
  String get notice;

  /// No description provided for @noticeMsgAlreadyexit.
  ///
  /// In en, this message translates to:
  /// **'has already left the waiting room.'**
  String get noticeMsgAlreadyexit;

  /// No description provided for @noticeMsgAlreadygame.
  ///
  /// In en, this message translates to:
  /// **'is already playing a game.'**
  String get noticeMsgAlreadygame;

  /// No description provided for @noticeMsgAlreadyid.
  ///
  /// In en, this message translates to:
  /// **'ID already exists.'**
  String get noticeMsgAlreadyid;

  /// No description provided for @noticeMsgBuyfail.
  ///
  /// In en, this message translates to:
  /// **'Purchase failed, as network status is unsatisfactory. Please try again in a little while.'**
  String get noticeMsgBuyfail;

  /// No description provided for @noticeMsgInvite.
  ///
  /// In en, this message translates to:
  /// **'has invited you.'**
  String get noticeMsgInvite;

  /// No description provided for @noticeMsgNetworkerrorDownload.
  ///
  /// In en, this message translates to:
  /// **'Network status is unsatisfactory. Please try downloading again later.'**
  String get noticeMsgNetworkerrorDownload;

  /// No description provided for @noticeMsgNetworkerrorJoin.
  ///
  /// In en, this message translates to:
  /// **'Signing up cannot be processed as network status is unsatisfactory. Please try again.'**
  String get noticeMsgNetworkerrorJoin;

  /// No description provided for @noticeMsgNetworkerrorRelease.
  ///
  /// In en, this message translates to:
  /// **'Your opponent has been disconnected.'**
  String get noticeMsgNetworkerrorRelease;

  /// No description provided for @noticeMsgNetworkfail.
  ///
  /// In en, this message translates to:
  /// **'Unable to connect to server. Please try again in a little while.'**
  String get noticeMsgNetworkfail;

  /// No description provided for @noticeMsgNicknamelength.
  ///
  /// In en, this message translates to:
  /// **'No nicknames or excess characters.'**
  String get noticeMsgNicknamelength;

  /// No description provided for @noticeMsgNocharacters.
  ///
  /// In en, this message translates to:
  /// **'You have not selected a character.'**
  String get noticeMsgNocharacters;

  /// No description provided for @noticeMsgNoemailtype.
  ///
  /// In en, this message translates to:
  /// **'ID not in e-mail format.'**
  String get noticeMsgNoemailtype;

  /// No description provided for @noticeMsgNoid.
  ///
  /// In en, this message translates to:
  /// **'ID does not exist.'**
  String get noticeMsgNoid;

  /// No description provided for @noticeMsgNomatchpasswd.
  ///
  /// In en, this message translates to:
  /// **'Password does not match.'**
  String get noticeMsgNomatchpasswd;

  /// No description provided for @noticeMsgNopasswd.
  ///
  /// In en, this message translates to:
  /// **'Incorrect password.'**
  String get noticeMsgNopasswd;

  /// No description provided for @noticeMsgNotUser.
  ///
  /// In en, this message translates to:
  /// **'The user has not connected or the ID does not exist.'**
  String get noticeMsgNotUser;

  /// No description provided for @noticeMsgNotUsers.
  ///
  /// In en, this message translates to:
  /// **'No connected user.'**
  String get noticeMsgNotUsers;

  /// No description provided for @noticeMsgNotid.
  ///
  /// In en, this message translates to:
  /// **'No ID entered.'**
  String get noticeMsgNotid;

  /// No description provided for @noticeMsgNotpasswd.
  ///
  /// In en, this message translates to:
  /// **'No Password entered.'**
  String get noticeMsgNotpasswd;

  /// No description provided for @noticeMsgNotsupportedChord.
  ///
  /// In en, this message translates to:
  /// **'Is not supported. Or is not connected to Wi-Fi'**
  String get noticeMsgNotsupportedChord;

  /// No description provided for @noticeMsgOverlapuserid.
  ///
  /// In en, this message translates to:
  /// **'Login is repeated or the room does not exist.'**
  String get noticeMsgOverlapuserid;

  /// No description provided for @noticeMsgRewirtepasswd.
  ///
  /// In en, this message translates to:
  /// **'Password must be 4 - 12 digits.'**
  String get noticeMsgRewirtepasswd;

  /// No description provided for @noticeMsgUseableid.
  ///
  /// In en, this message translates to:
  /// **'This ID is available.'**
  String get noticeMsgUseableid;

  /// No description provided for @num.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get num;

  /// No description provided for @number.
  ///
  /// In en, this message translates to:
  /// **'Order'**
  String get number;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @paymentComplete.
  ///
  /// In en, this message translates to:
  /// **'Payment complete'**
  String get paymentComplete;

  /// No description provided for @point.
  ///
  /// In en, this message translates to:
  /// **'Point'**
  String get point;

  /// No description provided for @rank.
  ///
  /// In en, this message translates to:
  /// **'Rank'**
  String get rank;

  /// No description provided for @ready.
  ///
  /// In en, this message translates to:
  /// **'In preparation'**
  String get ready;

  /// No description provided for @refuse.
  ///
  /// In en, this message translates to:
  /// **'Refuse'**
  String get refuse;

  /// No description provided for @score.
  ///
  /// In en, this message translates to:
  /// **'Score'**
  String get score;

  /// No description provided for @skillName0.
  ///
  /// In en, this message translates to:
  /// **'Puppy\'s footprint'**
  String get skillName0;

  /// No description provided for @skillName1.
  ///
  /// In en, this message translates to:
  /// **'Cat\'s claw'**
  String get skillName1;

  /// No description provided for @skillName2.
  ///
  /// In en, this message translates to:
  /// **'Explosion'**
  String get skillName2;

  /// No description provided for @skillName3.
  ///
  /// In en, this message translates to:
  /// **'Flame'**
  String get skillName3;

  /// No description provided for @skillName4.
  ///
  /// In en, this message translates to:
  /// **'Snowflake'**
  String get skillName4;

  /// No description provided for @skillName5.
  ///
  /// In en, this message translates to:
  /// **'Powerful explosion'**
  String get skillName5;

  /// No description provided for @skillName6.
  ///
  /// In en, this message translates to:
  /// **'Powerful flame'**
  String get skillName6;

  /// No description provided for @skillName7.
  ///
  /// In en, this message translates to:
  /// **'Powerful snowflake'**
  String get skillName7;

  /// No description provided for @skillText0.
  ///
  /// In en, this message translates to:
  /// **'This is a basic technique. The puppy walks across your opponent’s game screen leaving footprints.'**
  String get skillText0;

  /// No description provided for @skillText1.
  ///
  /// In en, this message translates to:
  /// **'This is a basic technique. The angry cat scratched claw marks on your opponent’s game screen.'**
  String get skillText1;

  /// No description provided for @skillText2.
  ///
  /// In en, this message translates to:
  /// **'This attack uses explosives. Bombs explode on your opponent’s game screen.'**
  String get skillText2;

  /// No description provided for @skillText3.
  ///
  /// In en, this message translates to:
  /// **'This attack uses flame. Flames appear on your opponent’s game screen.'**
  String get skillText3;

  /// No description provided for @skillText4.
  ///
  /// In en, this message translates to:
  /// **'This attack uses snowflakes. Snowflakes fall on your opponent’s game screen.'**
  String get skillText4;

  /// No description provided for @skillText5.
  ///
  /// In en, this message translates to:
  /// **'This attack uses powerful explosives. Bombs explode on your opponent’s game screen.'**
  String get skillText5;

  /// No description provided for @skillText6.
  ///
  /// In en, this message translates to:
  /// **'This attack uses powerful flame. Flames appear on your opponent’s game screen.'**
  String get skillText6;

  /// No description provided for @skillText7.
  ///
  /// In en, this message translates to:
  /// **'This attack uses powerful snowflakes. Snowflakes fall on your opponent’s game screen.'**
  String get skillText7;

  /// No description provided for @sound.
  ///
  /// In en, this message translates to:
  /// **'Sound'**
  String get sound;

  /// No description provided for @startgame.
  ///
  /// In en, this message translates to:
  /// **'Play game'**
  String get startgame;

  /// No description provided for @viewMore.
  ///
  /// In en, this message translates to:
  /// **'View more'**
  String get viewMore;

  /// No description provided for @wait.
  ///
  /// In en, this message translates to:
  /// **'Wait'**
  String get wait;

  /// No description provided for @waitMsg.
  ///
  /// In en, this message translates to:
  /// **'Please wait'**
  String get waitMsg;

  /// No description provided for @waitingIng.
  ///
  /// In en, this message translates to:
  /// **'Waiting...'**
  String get waitingIng;

  /// No description provided for @waitingroom.
  ///
  /// In en, this message translates to:
  /// **'Waiting room'**
  String get waitingroom;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ko'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ko': return AppLocalizationsKo();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
