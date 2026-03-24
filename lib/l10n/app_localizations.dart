import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_mr.dart';

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
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('hi'),
    Locale('mr'),
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'VaidyaAssist AI'**
  String get appName;

  /// No description provided for @appSubtitle.
  ///
  /// In en, this message translates to:
  /// **'The Digital Apothecary'**
  String get appSubtitle;

  /// No description provided for @professionalEmail.
  ///
  /// In en, this message translates to:
  /// **'Professional Email'**
  String get professionalEmail;

  /// No description provided for @emailHint.
  ///
  /// In en, this message translates to:
  /// **'john.doe@ayulife.com'**
  String get emailHint;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @passwordHint.
  ///
  /// In en, this message translates to:
  /// **'••••••••'**
  String get passwordHint;

  /// No description provided for @forgotAccess.
  ///
  /// In en, this message translates to:
  /// **'Forgot Access?'**
  String get forgotAccess;

  /// No description provided for @requestOtp.
  ///
  /// In en, this message translates to:
  /// **'Request One-Time Password'**
  String get requestOtp;

  /// No description provided for @consulting.
  ///
  /// In en, this message translates to:
  /// **'Consulting...'**
  String get consulting;

  /// No description provided for @startConsulting.
  ///
  /// In en, this message translates to:
  /// **'Start Consulting with AI'**
  String get startConsulting;

  /// No description provided for @newToApothecary.
  ///
  /// In en, this message translates to:
  /// **'New to the apothecary? '**
  String get newToApothecary;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Practitioner Account'**
  String get createAccount;

  /// No description provided for @securePortal.
  ///
  /// In en, this message translates to:
  /// **'SECURE HIPPA COMPLIANT PORTAL'**
  String get securePortal;

  /// No description provided for @orContinueWith.
  ///
  /// In en, this message translates to:
  /// **'Or Continue With'**
  String get orContinueWith;

  /// No description provided for @dashboard.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get dashboard;

  /// No description provided for @newConsultation.
  ///
  /// In en, this message translates to:
  /// **'New Consultation'**
  String get newConsultation;

  /// No description provided for @savedCases.
  ///
  /// In en, this message translates to:
  /// **'Saved Cases'**
  String get savedCases;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @searchPatients.
  ///
  /// In en, this message translates to:
  /// **'Search patients or cases...'**
  String get searchPatients;

  /// No description provided for @doctorName.
  ///
  /// In en, this message translates to:
  /// **'Dr. Ananya Iyer'**
  String get doctorName;

  /// No description provided for @ayurvedicSpecialist.
  ///
  /// In en, this message translates to:
  /// **'AYURVEDIC SPECIALIST'**
  String get ayurvedicSpecialist;

  /// No description provided for @patientsToday.
  ///
  /// In en, this message translates to:
  /// **'Patients today'**
  String get patientsToday;

  /// No description provided for @fromYesterday.
  ///
  /// In en, this message translates to:
  /// **'+2 from yesterday'**
  String get fromYesterday;

  /// No description provided for @aiConsultations.
  ///
  /// In en, this message translates to:
  /// **'AI consultations'**
  String get aiConsultations;

  /// No description provided for @activeAnalysis.
  ///
  /// In en, this message translates to:
  /// **'Active Analysis'**
  String get activeAnalysis;

  /// No description provided for @viewLibrary.
  ///
  /// In en, this message translates to:
  /// **'View Library'**
  String get viewLibrary;

  /// No description provided for @recentConsultations.
  ///
  /// In en, this message translates to:
  /// **'Recent consultations'**
  String get recentConsultations;

  /// No description provided for @viewAllRecords.
  ///
  /// In en, this message translates to:
  /// **'View all records'**
  String get viewAllRecords;

  /// No description provided for @patientName.
  ///
  /// In en, this message translates to:
  /// **'Patient Name'**
  String get patientName;

  /// No description provided for @dateCol.
  ///
  /// In en, this message translates to:
  /// **'DATE'**
  String get dateCol;

  /// No description provided for @diagnosisCol.
  ///
  /// In en, this message translates to:
  /// **'DIAGNOSIS'**
  String get diagnosisCol;

  /// No description provided for @aiInsights.
  ///
  /// In en, this message translates to:
  /// **'AI Insights: Seasonal Trends'**
  String get aiInsights;

  /// No description provided for @insightsDesc.
  ///
  /// In en, this message translates to:
  /// **'We\'ve noticed a 20% increase in Vata-related respiratory symptoms in your region. Consider stocking up on Tulsi and Ashwagandha extracts.'**
  String get insightsDesc;

  /// No description provided for @orderSupplies.
  ///
  /// In en, this message translates to:
  /// **'Order Supplies'**
  String get orderSupplies;

  /// No description provided for @systemHealth.
  ///
  /// In en, this message translates to:
  /// **'System Health'**
  String get systemHealth;

  /// No description provided for @dbSync.
  ///
  /// In en, this message translates to:
  /// **'Database Sync'**
  String get dbSync;

  /// No description provided for @operational.
  ///
  /// In en, this message translates to:
  /// **'Operational'**
  String get operational;

  /// No description provided for @aiEngineStatus.
  ///
  /// In en, this message translates to:
  /// **'AI Diagnostic Engine'**
  String get aiEngineStatus;

  /// No description provided for @accuracy.
  ///
  /// In en, this message translates to:
  /// **'99.4% Acc.'**
  String get accuracy;

  /// No description provided for @consultIntro.
  ///
  /// In en, this message translates to:
  /// **'Initialize a digital assessment by providing patient vitals and symptomatic data.'**
  String get consultIntro;

  /// No description provided for @age.
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get age;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// No description provided for @other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// No description provided for @symptomsChecklist.
  ///
  /// In en, this message translates to:
  /// **'Symptoms Checklist'**
  String get symptomsChecklist;

  /// No description provided for @describeSymptoms.
  ///
  /// In en, this message translates to:
  /// **'Describe symptoms in detail...'**
  String get describeSymptoms;

  /// No description provided for @symptomDuration.
  ///
  /// In en, this message translates to:
  /// **'Symptom Duration'**
  String get symptomDuration;

  /// No description provided for @weeks.
  ///
  /// In en, this message translates to:
  /// **'Weeks'**
  String get weeks;

  /// No description provided for @patientPrakriti.
  ///
  /// In en, this message translates to:
  /// **'Patient Prakriti'**
  String get patientPrakriti;

  /// No description provided for @vata.
  ///
  /// In en, this message translates to:
  /// **'Vata'**
  String get vata;

  /// No description provided for @pitta.
  ///
  /// In en, this message translates to:
  /// **'Pitta'**
  String get pitta;

  /// No description provided for @kapha.
  ///
  /// In en, this message translates to:
  /// **'Kapha'**
  String get kapha;

  /// No description provided for @generateAiDiagnosis.
  ///
  /// In en, this message translates to:
  /// **'Generate AI Diagnosis'**
  String get generateAiDiagnosis;

  /// No description provided for @vaidyaEngine.
  ///
  /// In en, this message translates to:
  /// **'Vaidya Engine v4.2'**
  String get vaidyaEngine;

  /// No description provided for @awaitingData.
  ///
  /// In en, this message translates to:
  /// **'Awaiting Consultation Data...'**
  String get awaitingData;

  /// No description provided for @digitalInsightsEngine.
  ///
  /// In en, this message translates to:
  /// **'Digital Insights Engine'**
  String get digitalInsightsEngine;

  /// No description provided for @fillOutFormDesc.
  ///
  /// In en, this message translates to:
  /// **'Fill out the patient form on the left to see diagnosis, herbs, and lifestyle recommendations.'**
  String get fillOutFormDesc;

  /// No description provided for @primaryImbalance.
  ///
  /// In en, this message translates to:
  /// **'Primary Imbalance'**
  String get primaryImbalance;

  /// No description provided for @recommendedHerbs.
  ///
  /// In en, this message translates to:
  /// **'Recommended Herbs'**
  String get recommendedHerbs;

  /// No description provided for @lifestyleTweaks.
  ///
  /// In en, this message translates to:
  /// **'Lifestyle Tweaks'**
  String get lifestyleTweaks;

  /// No description provided for @namasteDoctor.
  ///
  /// In en, this message translates to:
  /// **'Namaste, Dr. Ananya'**
  String get namasteDoctor;

  /// No description provided for @todayBeautiful.
  ///
  /// In en, this message translates to:
  /// **'Today is a beautiful day for healing. You have 12 appointments scheduled.'**
  String get todayBeautiful;

  /// No description provided for @uploadCase.
  ///
  /// In en, this message translates to:
  /// **'Upload Case'**
  String get uploadCase;

  /// No description provided for @johnDoe.
  ///
  /// In en, this message translates to:
  /// **'John Doe'**
  String get johnDoe;

  /// No description provided for @patientNameCol.
  ///
  /// In en, this message translates to:
  /// **'PATIENT NAME'**
  String get patientNameCol;

  /// No description provided for @savedCasesTitle.
  ///
  /// In en, this message translates to:
  /// **'Saved Cases'**
  String get savedCasesTitle;

  /// No description provided for @savedCasesDesc.
  ///
  /// In en, this message translates to:
  /// **'Review and analyze your historical patient consultations.'**
  String get savedCasesDesc;

  /// No description provided for @searchSavedCases.
  ///
  /// In en, this message translates to:
  /// **'Search by patient name or symptoms...'**
  String get searchSavedCases;

  /// No description provided for @filterByDate.
  ///
  /// In en, this message translates to:
  /// **'Filter by date'**
  String get filterByDate;

  /// No description provided for @noSavedCases.
  ///
  /// In en, this message translates to:
  /// **'No cases found'**
  String get noSavedCases;

  /// No description provided for @noSavedCasesDesc.
  ///
  /// In en, this message translates to:
  /// **'Try adjusting your search or filter parameters.'**
  String get noSavedCasesDesc;

  /// No description provided for @viewCaseBtn.
  ///
  /// In en, this message translates to:
  /// **'View Case'**
  String get viewCaseBtn;

  /// No description provided for @archiveRecords.
  ///
  /// In en, this message translates to:
  /// **'Archive & Records'**
  String get archiveRecords;

  /// No description provided for @savedCasesHeroDesc.
  ///
  /// In en, this message translates to:
  /// **'Access your clinical history and draft consultations. Each record is preserved with botanical precision for continuity of care.'**
  String get savedCasesHeroDesc;

  /// No description provided for @newCaseBtn.
  ///
  /// In en, this message translates to:
  /// **'New Case'**
  String get newCaseBtn;

  /// No description provided for @statusAllCases.
  ///
  /// In en, this message translates to:
  /// **'Status: All Cases'**
  String get statusAllCases;

  /// No description provided for @treatmentType.
  ///
  /// In en, this message translates to:
  /// **'Treatment Type'**
  String get treatmentType;

  /// No description provided for @clearAllFilters.
  ///
  /// In en, this message translates to:
  /// **'Clear all filters'**
  String get clearAllFilters;

  /// No description provided for @patientIdentityCol.
  ///
  /// In en, this message translates to:
  /// **'Patient Identity'**
  String get patientIdentityCol;

  /// No description provided for @diagnosisSummaryCol.
  ///
  /// In en, this message translates to:
  /// **'Diagnosis Summary'**
  String get diagnosisSummaryCol;

  /// No description provided for @dateFiledCol.
  ///
  /// In en, this message translates to:
  /// **'Date Filed'**
  String get dateFiledCol;

  /// No description provided for @statusCol.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get statusCol;

  /// No description provided for @actionsCol.
  ///
  /// In en, this message translates to:
  /// **'Actions'**
  String get actionsCol;

  /// No description provided for @showingArchivedCases.
  ///
  /// In en, this message translates to:
  /// **'Showing 4 of 128 archived cases'**
  String get showingArchivedCases;

  /// No description provided for @caseIdLabel.
  ///
  /// In en, this message translates to:
  /// **'Case #{id}'**
  String caseIdLabel(Object id);

  /// No description provided for @activeTreatment.
  ///
  /// In en, this message translates to:
  /// **'Active Treatment'**
  String get activeTreatment;

  /// No description provided for @ageGenderLabel.
  ///
  /// In en, this message translates to:
  /// **'Age / Gender'**
  String get ageGenderLabel;

  /// No description provided for @doshaConstitution.
  ///
  /// In en, this message translates to:
  /// **'Dosha Constitution'**
  String get doshaConstitution;

  /// No description provided for @lastVisit.
  ///
  /// In en, this message translates to:
  /// **'Last Visit'**
  String get lastVisit;

  /// No description provided for @currentStatus.
  ///
  /// In en, this message translates to:
  /// **'Current Status'**
  String get currentStatus;

  /// No description provided for @consultationJourney.
  ///
  /// In en, this message translates to:
  /// **'Consultation Journey'**
  String get consultationJourney;

  /// No description provided for @clinicalNotes.
  ///
  /// In en, this message translates to:
  /// **'Clinical Notes'**
  String get clinicalNotes;

  /// No description provided for @autoSaving.
  ///
  /// In en, this message translates to:
  /// **'AUTO-SAVING'**
  String get autoSaving;

  /// No description provided for @reRunAiAnalysis.
  ///
  /// In en, this message translates to:
  /// **'RE-RUN AI ANALYSIS'**
  String get reRunAiAnalysis;

  /// No description provided for @treatmentDay.
  ///
  /// In en, this message translates to:
  /// **'Treatment Day'**
  String get treatmentDay;

  /// No description provided for @successRate.
  ///
  /// In en, this message translates to:
  /// **'Success Rate'**
  String get successRate;

  /// No description provided for @vaidyaAiAnalysis.
  ///
  /// In en, this message translates to:
  /// **'Vaidya AI Analysis'**
  String get vaidyaAiAnalysis;

  /// No description provided for @notesPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Type clinical observations, dietary changes, or specific patient concerns here...'**
  String get notesPlaceholder;

  /// No description provided for @backToCases.
  ///
  /// In en, this message translates to:
  /// **'Back to Saved Cases'**
  String get backToCases;

  /// No description provided for @settingsDesc.
  ///
  /// In en, this message translates to:
  /// **'Manage your clinical profile, language preferences, and account security.'**
  String get settingsDesc;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @preferences.
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get preferences;

  /// No description provided for @security.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get security;

  /// No description provided for @changeAvatar.
  ///
  /// In en, this message translates to:
  /// **'Change Avatar'**
  String get changeAvatar;

  /// No description provided for @accountId.
  ///
  /// In en, this message translates to:
  /// **'Account ID: {id}'**
  String accountId(Object id);

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// No description provided for @saveProfileChanges.
  ///
  /// In en, this message translates to:
  /// **'Save Profile Changes'**
  String get saveProfileChanges;

  /// No description provided for @pushNotifications.
  ///
  /// In en, this message translates to:
  /// **'Push Notifications'**
  String get pushNotifications;

  /// No description provided for @pushNotificationsDesc.
  ///
  /// In en, this message translates to:
  /// **'Receive alerts for new AI diagnosis results'**
  String get pushNotificationsDesc;

  /// No description provided for @emailReports.
  ///
  /// In en, this message translates to:
  /// **'Email Reports'**
  String get emailReports;

  /// No description provided for @emailReportsDesc.
  ///
  /// In en, this message translates to:
  /// **'Weekly summary of patient consultations'**
  String get emailReportsDesc;

  /// No description provided for @appearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// No description provided for @light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light;

  /// No description provided for @dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark;

  /// No description provided for @system.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get system;

  /// No description provided for @accountSecurity.
  ///
  /// In en, this message translates to:
  /// **'Account Security'**
  String get accountSecurity;

  /// No description provided for @accountSecurityDesc.
  ///
  /// In en, this message translates to:
  /// **'Ensure your practitioner account is secure by managing access and sessions.'**
  String get accountSecurityDesc;

  /// No description provided for @changePassword.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get changePassword;

  /// No description provided for @logoutFromVaidya.
  ///
  /// In en, this message translates to:
  /// **'Logout from VaidyaAssist'**
  String get logoutFromVaidya;

  /// No description provided for @settingsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Configure your digital apothecary workspace and personalize your diagnostic assistant\'s behavior.'**
  String get settingsSubtitle;

  /// No description provided for @subscription.
  ///
  /// In en, this message translates to:
  /// **'Subscription'**
  String get subscription;

  /// No description provided for @logoutAccount.
  ///
  /// In en, this message translates to:
  /// **'Logout from Account'**
  String get logoutAccount;

  /// No description provided for @settingsSavedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Settings saved successfully to your Digital Apothecary workspace.'**
  String get settingsSavedSuccess;

  /// No description provided for @profileInformation.
  ///
  /// In en, this message translates to:
  /// **'Profile Information'**
  String get profileInformation;

  /// No description provided for @updatePhoto.
  ///
  /// In en, this message translates to:
  /// **'Update Photo'**
  String get updatePhoto;

  /// No description provided for @clinicName.
  ///
  /// In en, this message translates to:
  /// **'Clinic Name'**
  String get clinicName;

  /// No description provided for @emailAddress.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get emailAddress;

  /// No description provided for @appExperience.
  ///
  /// In en, this message translates to:
  /// **'App & Experience'**
  String get appExperience;

  /// No description provided for @languageSelection.
  ///
  /// In en, this message translates to:
  /// **'Language Selection'**
  String get languageSelection;

  /// No description provided for @languageSelectionDesc.
  ///
  /// In en, this message translates to:
  /// **'Interface and diagnosis reports will be translated.'**
  String get languageSelectionDesc;

  /// No description provided for @aiCommunicationTone.
  ///
  /// In en, this message translates to:
  /// **'AI Communication Tone'**
  String get aiCommunicationTone;

  /// No description provided for @aiToneDesc.
  ///
  /// In en, this message translates to:
  /// **'Adjust how the AI generates patient summaries.'**
  String get aiToneDesc;

  /// No description provided for @clinicalObjective.
  ///
  /// In en, this message translates to:
  /// **'Clinical (Objective)'**
  String get clinicalObjective;

  /// No description provided for @simplePatientFriendly.
  ///
  /// In en, this message translates to:
  /// **'Simple (Patient Friendly)'**
  String get simplePatientFriendly;

  /// No description provided for @detailedEducational.
  ///
  /// In en, this message translates to:
  /// **'Detailed (Educational)'**
  String get detailedEducational;

  /// No description provided for @securitySubscription.
  ///
  /// In en, this message translates to:
  /// **'Security & Subscription'**
  String get securitySubscription;

  /// No description provided for @lastChangedMonths.
  ///
  /// In en, this message translates to:
  /// **'Last changed {months} months ago.'**
  String lastChangedMonths(Object months);

  /// No description provided for @professionalPlan.
  ///
  /// In en, this message translates to:
  /// **'Professional Plan'**
  String get professionalPlan;

  /// No description provided for @nextBilling.
  ///
  /// In en, this message translates to:
  /// **'Next billing: {date}'**
  String nextBilling(Object date);

  /// No description provided for @upgrade.
  ///
  /// In en, this message translates to:
  /// **'Upgrade'**
  String get upgrade;

  /// No description provided for @saveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get saveChanges;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @notificationsDesc.
  ///
  /// In en, this message translates to:
  /// **'Manage how you receive alerts and updates.'**
  String get notificationsDesc;

  /// No description provided for @enablePushNotifications.
  ///
  /// In en, this message translates to:
  /// **'Enable Push Notifications'**
  String get enablePushNotifications;

  /// No description provided for @joinVaidyaAi.
  ///
  /// In en, this message translates to:
  /// **'Vaidya AI'**
  String get joinVaidyaAi;

  /// No description provided for @joinDigitalApothecary.
  ///
  /// In en, this message translates to:
  /// **'JOIN THE DIGITAL APOTHECARY'**
  String get joinDigitalApothecary;

  /// No description provided for @practitionerAccountDesc.
  ///
  /// In en, this message translates to:
  /// **'Secure, clinical-grade infrastructure for your modern practice.'**
  String get practitionerAccountDesc;

  /// No description provided for @medRegistrationNo.
  ///
  /// In en, this message translates to:
  /// **'MEDICAL REGISTRATION NO.'**
  String get medRegistrationNo;

  /// No description provided for @medRegistrationHint.
  ///
  /// In en, this message translates to:
  /// **'MED-99283-X'**
  String get medRegistrationHint;

  /// No description provided for @practiceType.
  ///
  /// In en, this message translates to:
  /// **'PRACTICE TYPE'**
  String get practiceType;

  /// No description provided for @practiceTypeHint.
  ///
  /// In en, this message translates to:
  /// **'Select Practice Type'**
  String get practiceTypeHint;

  /// No description provided for @generalPractitioner.
  ///
  /// In en, this message translates to:
  /// **'General Practitioner'**
  String get generalPractitioner;

  /// No description provided for @specialist.
  ///
  /// In en, this message translates to:
  /// **'Specialist'**
  String get specialist;

  /// No description provided for @ayurvedicDoctor.
  ///
  /// In en, this message translates to:
  /// **'Ayurvedic Doctor'**
  String get ayurvedicDoctor;

  /// No description provided for @homeopathicDoctor.
  ///
  /// In en, this message translates to:
  /// **'Homeopathic Doctor'**
  String get homeopathicDoctor;

  /// No description provided for @clinicAdministrator.
  ///
  /// In en, this message translates to:
  /// **'Clinic Administrator'**
  String get clinicAdministrator;

  /// No description provided for @agreeToTermsPrefix.
  ///
  /// In en, this message translates to:
  /// **'I agree to the '**
  String get agreeToTermsPrefix;

  /// No description provided for @clinicalStandards.
  ///
  /// In en, this message translates to:
  /// **'Clinical Standards'**
  String get clinicalStandards;

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **' and '**
  String get and;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @agreeToTermsSuffix.
  ///
  /// In en, this message translates to:
  /// **' governing practitioner data in the apothecary.'**
  String get agreeToTermsSuffix;

  /// No description provided for @createApothecaryAccount.
  ///
  /// In en, this message translates to:
  /// **'Create My Apothecary Account'**
  String get createApothecaryAccount;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account? '**
  String get alreadyHaveAccount;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @endToEndEncryption.
  ///
  /// In en, this message translates to:
  /// **'END-TO-END\nENCRYPTION'**
  String get endToEndEncryption;

  /// No description provided for @hipaaCompliant.
  ///
  /// In en, this message translates to:
  /// **'HIPAA COMPLIANT'**
  String get hipaaCompliant;

  /// No description provided for @localizedData.
  ///
  /// In en, this message translates to:
  /// **'LOCALIZED DATA'**
  String get localizedData;

  /// No description provided for @ethicalAi.
  ///
  /// In en, this message translates to:
  /// **'ETHICAL AI'**
  String get ethicalAi;

  /// No description provided for @vaidyaAiVersion.
  ///
  /// In en, this message translates to:
  /// **'Vaidya AI v2.4.0-stable | Digital Apothecary Engine'**
  String get vaidyaAiVersion;

  /// No description provided for @settingsSaved.
  ///
  /// In en, this message translates to:
  /// **'Settings saved successfully!'**
  String get settingsSaved;

  /// No description provided for @errorRetry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get errorRetry;

  /// No description provided for @errorOccurred.
  ///
  /// In en, this message translates to:
  /// **'Error: {message}'**
  String errorOccurred(Object message);

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get firstName;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get lastName;

  /// No description provided for @mobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Mobile Number'**
  String get mobileNumber;

  /// No description provided for @clinicCenterName.
  ///
  /// In en, this message translates to:
  /// **'Clinic / Center Name'**
  String get clinicCenterName;

  /// No description provided for @emailId.
  ///
  /// In en, this message translates to:
  /// **'Email ID'**
  String get emailId;

  /// No description provided for @firstNameHint.
  ///
  /// In en, this message translates to:
  /// **'John'**
  String get firstNameHint;

  /// No description provided for @lastNameHint.
  ///
  /// In en, this message translates to:
  /// **'Doe'**
  String get lastNameHint;

  /// No description provided for @mobileHint.
  ///
  /// In en, this message translates to:
  /// **'+91 98765 43210'**
  String get mobileHint;

  /// No description provided for @clinicHint.
  ///
  /// In en, this message translates to:
  /// **'AyuLife Wellness'**
  String get clinicHint;

  /// No description provided for @languagePreferences.
  ///
  /// In en, this message translates to:
  /// **'Language Preferences'**
  String get languagePreferences;

  /// No description provided for @uiLanguage.
  ///
  /// In en, this message translates to:
  /// **'UI Language'**
  String get uiLanguage;

  /// No description provided for @aiGenerationLanguage.
  ///
  /// In en, this message translates to:
  /// **'AI Generation Language'**
  String get aiGenerationLanguage;

  /// No description provided for @aiResponseTone.
  ///
  /// In en, this message translates to:
  /// **'AI Response Tone'**
  String get aiResponseTone;

  /// No description provided for @clinical.
  ///
  /// In en, this message translates to:
  /// **'Clinical'**
  String get clinical;

  /// No description provided for @simple.
  ///
  /// In en, this message translates to:
  /// **'Simple'**
  String get simple;

  /// No description provided for @detailed.
  ///
  /// In en, this message translates to:
  /// **'Detailed'**
  String get detailed;

  /// No description provided for @securityPlan.
  ///
  /// In en, this message translates to:
  /// **'Security & Plan'**
  String get securityPlan;

  /// No description provided for @lastChanged.
  ///
  /// In en, this message translates to:
  /// **'Last changed {duration} ago'**
  String lastChanged(Object duration);

  /// No description provided for @currentPlan.
  ///
  /// In en, this message translates to:
  /// **'Current Plan: {plan}'**
  String currentPlan(Object plan);

  /// No description provided for @freeApothecary.
  ///
  /// In en, this message translates to:
  /// **'Free Apothecary'**
  String get freeApothecary;

  /// No description provided for @planDescription.
  ///
  /// In en, this message translates to:
  /// **'Unlock detailed pulse analysis & history.'**
  String get planDescription;

  /// No description provided for @upgradeToPro.
  ///
  /// In en, this message translates to:
  /// **'Upgrade to Pro'**
  String get upgradeToPro;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get signOut;

  /// No description provided for @unsavedChanges.
  ///
  /// In en, this message translates to:
  /// **'You have unsaved changes'**
  String get unsavedChanges;

  /// No description provided for @settingsDescription.
  ///
  /// In en, this message translates to:
  /// **'Manage your apothecary preferences and account security.'**
  String get settingsDescription;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'hi', 'mr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'hi':
      return AppLocalizationsHi();
    case 'mr':
      return AppLocalizationsMr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
