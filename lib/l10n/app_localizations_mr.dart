// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appName => 'वैद्य असिस्ट एआय (VaidyaAssist AI)';

  @override
  String get appSubtitle => 'डिजिटल औषधालय (Digital Apothecary)';

  @override
  String get professionalEmail => 'व्यावसायिक ईमेल (Professional Email)';

  @override
  String get emailHint => 'dr.sharma@ayurveda.com';

  @override
  String get password => 'पासवर्ड (Password)';

  @override
  String get passwordHint => '••••••••';

  @override
  String get forgotAccess => 'अॅक्सेस विसरलात? (Forgot Access?)';

  @override
  String get requestOtp => 'वन-टाइम पासवर्डची विनंती करा (Request OTP)';

  @override
  String get consulting => 'सल्लामसलत सुरू आहे... (Consulting...)';

  @override
  String get startConsulting =>
      'एआय सोबत सल्लामसलत सुरू करा (Start Consulting)';

  @override
  String get newToApothecary => 'औषधालयात नवीन आहात? ';

  @override
  String get createAccount => 'प्रॅक्टिशनर खाते तयार करा (Create Account)';

  @override
  String get securePortal => 'सुरक्षित HIPPA अनुपालक पोर्टल';

  @override
  String get orContinueWith => 'किंवा याच्यासह सुरू ठेवा';

  @override
  String get dashboard => 'डॅशबोर्ड (Dashboard)';

  @override
  String get newConsultation => 'नवीन सल्लामसलत (New Consult)';

  @override
  String get savedCases => 'जतन केलेली प्रकरणे (Saved Cases)';

  @override
  String get settings => 'सेटिंग्ज (Settings)';

  @override
  String get searchPatients => 'रुग्ण किंवा प्रकरणे शोधा...';

  @override
  String get doctorName => 'डॉ. अनन्या अय्यर';

  @override
  String get ayurvedicSpecialist => 'आयुर्वेदिक विशेषज्ञ';

  @override
  String get patientsToday => 'आजचे रुग्ण';

  @override
  String get fromYesterday => '+2 कालपासून';

  @override
  String get aiConsultations => 'एआय सल्लामसलत';

  @override
  String get activeAnalysis => 'सक्रिय विश्लेषण';

  @override
  String get viewLibrary => 'लायब्ररी पहा';

  @override
  String get recentConsultations => 'अलीकडील सल्लामसलत';

  @override
  String get viewAllRecords => 'सर्व नोंदी पहा';

  @override
  String get patientName => 'रुग्णाचे नाव';

  @override
  String get dateCol => 'तारीख';

  @override
  String get diagnosisCol => 'निदान';

  @override
  String get aiInsights => 'एआय टिपण्या: हंगामी कल';

  @override
  String get insightsDesc =>
      'आम्हाला तुमच्या प्रदेशात वात-संबंधित श्वसन लक्षणांमध्ये २०% वाढ दिसली आहे. तुळसी आणि अश्वगंधाचा साठा ठेवण्याचा विचार करा.';

  @override
  String get orderSupplies => 'पुरवठा ऑर्डर करा';

  @override
  String get systemHealth => 'प्रणाली आरोग्य';

  @override
  String get dbSync => 'डेटाबेस सिंक';

  @override
  String get operational => 'सक्रिय';

  @override
  String get aiEngineStatus => 'एआय डायग्नोस्टिक इंजिन';

  @override
  String get accuracy => '99.4% अचूकता';

  @override
  String get consultIntro =>
      'रुग्णाची महत्त्वाची आणि लक्षणांची माहिती देऊन डिजिटल मूल्यांकन सुरू करा.';

  @override
  String get age => 'वय';

  @override
  String get gender => 'लिंग';

  @override
  String get male => 'पुरुष';

  @override
  String get female => 'स्त्री';

  @override
  String get other => 'इतर';

  @override
  String get symptomsChecklist => 'लक्षणे तपासणी यादी';

  @override
  String get describeSymptoms => 'लक्षणांचे सविस्तर वर्णन करा...';

  @override
  String get symptomDuration => 'लक्षणांचा कालावधी';

  @override
  String get weeks => 'आठवडे';

  @override
  String get patientPrakriti => 'रुग्णाची प्रकृती';

  @override
  String get vata => 'वात';

  @override
  String get pitta => 'पित्त';

  @override
  String get kapha => 'कफ';

  @override
  String get generateAiDiagnosis => 'एआय निदान तयार करा';

  @override
  String get vaidyaEngine => 'वैद्य इंजिन v4.2';

  @override
  String get awaitingData => 'सल्लामसलत डेटाची प्रतीक्षा करत आहे...';

  @override
  String get digitalInsightsEngine => 'डिजिटल इनसाइट्स इंजिन';

  @override
  String get fillOutFormDesc =>
      'निदान, औषधी वनस्पती आणि जीवनशैली शिफारसी पाहण्यासाठी डावीकडील रुग्ण फॉर्म भरा.';

  @override
  String get primaryImbalance => 'प्राथमिक असंतुलन';

  @override
  String get recommendedHerbs => 'शिफारस केलेल्या औषधी वनस्पती';

  @override
  String get lifestyleTweaks => 'जीवनशैलीतील बदल';

  @override
  String namasteDoctor(Object name) {
    return 'नमस्ते, डॉ. $name';
  }

  @override
  String get todayBeautiful =>
      'आज उपचारांसाठी एक सुंदर दिवस आहे. तुमच्या 12 भेटी निश्चित आहेत.';

  @override
  String get uploadCase => 'प्रकरण अपलोड करा';

  @override
  String get johnDoe => 'जॉन डो';

  @override
  String get patientNameCol => 'रुग्णाचे नाव';

  @override
  String get savedCasesTitle => 'जतन केलेली प्रकरणे';

  @override
  String get savedCasesDesc =>
      'आपल्या ऐतिहासिक रुग्ण सल्लामसलतींचे पुनरावलोकन आणि विश्लेषण करा.';

  @override
  String get searchSavedCases => 'रुग्णाचे नाव किंवा लक्षणांनुसार शोधा...';

  @override
  String get filterByDate => 'तारखेनुसार फिल्टर करा';

  @override
  String get noSavedCases => 'कोणतीही प्रकरणे आढळली नाहीत';

  @override
  String get noSavedCasesDesc =>
      'आपले शोध किंवा फिल्टर पॅरामीटर्स समायोजित करण्याचा प्रयत्न करा.';

  @override
  String get viewCaseBtn => 'प्रकरण पहा';

  @override
  String get archiveRecords => 'संग्रह आणि नोंदी (Archive & Records)';

  @override
  String get savedCasesHeroDesc =>
      'तुमच्या क्लिनिकल इतिहास आणि मसुदा सल्लामसलतींमध्ये प्रवेश करा.';

  @override
  String get newCaseBtn => 'नवीन प्रकरण';

  @override
  String get statusAllCases => 'स्थिती: सर्व प्रकरणे';

  @override
  String get treatmentType => 'उपचाराचा प्रकार';

  @override
  String get clearAllFilters => 'सर्व फिल्टर साफ करा';

  @override
  String get patientIdentityCol => 'रुग्णाची ओळख';

  @override
  String get diagnosisSummaryCol => 'निदान सारांश';

  @override
  String get dateFiledCol => 'दाखल केलेली तारीख';

  @override
  String get statusCol => 'स्थिती';

  @override
  String get actionsCol => 'कृती';

  @override
  String get showingArchivedCases => '128 पैकी 4 प्रकरणे दर्शवित आहे';

  @override
  String caseIdLabel(Object id) {
    return 'प्रकरण #$id';
  }

  @override
  String get activeTreatment => 'सक्रिय उपचार';

  @override
  String get ageGenderLabel => 'वय / लिंग';

  @override
  String get doshaConstitution => 'दोष संविधान (Dosha Constitution)';

  @override
  String get lastVisit => 'शेवटची भेट';

  @override
  String get currentStatus => 'वर्तमान स्थिती';

  @override
  String get consultationJourney => 'सल्लामसलत प्रवास';

  @override
  String get clinicalNotes => 'क्लिनिकल नोट्स';

  @override
  String get autoSaving => 'ऑटो-सेव्ह होत आहे';

  @override
  String get reRunAiAnalysis => 'AI विश्लेषण पुन्हा चालवा';

  @override
  String get treatmentDay => 'उपचाराचा दिवस';

  @override
  String get successRate => 'यश दर';

  @override
  String get vaidyaAiAnalysis => 'वैद्य AI विश्लेषण';

  @override
  String get notesPlaceholder =>
      'येथे क्लिनिकल निरीक्षणे, आहारातील बदल किंवा रुग्णांच्या विशिष्ट चिंता टाइप करा...';

  @override
  String get backToCases => 'सेव्ह केलेल्या केसेसवर परत जा';

  @override
  String get settingsDesc =>
      'आपली क्लिनिकल प्रोफाइल, भाषा प्राधान्ये आणि खाते सुरक्षा व्यवस्थापित करा.';

  @override
  String get profile => 'प्रोफाइल (Profile)';

  @override
  String get language => 'भाषा (Language)';

  @override
  String get preferences => 'प्राधान्ये (Preferences)';

  @override
  String get security => 'सुरक्षा (Security)';

  @override
  String get changeAvatar => 'अवतार बदला';

  @override
  String accountId(Object id) {
    return 'खाते आयडी: $id';
  }

  @override
  String get fullName => 'पूर्ण नाव';

  @override
  String get saveProfileChanges => 'प्रोफाइल बदल जतन करा';

  @override
  String get pushNotifications => 'पुश अधिसूचना';

  @override
  String get pushNotificationsDesc => 'नवीन एआई निदान निकालांसाठी अलर्ट मिळवा';

  @override
  String get emailReports => 'ईमेल अहवाल';

  @override
  String get emailReportsDesc => 'रुग्ण सल्लामसलतचा साप्ताहिक सारांश';

  @override
  String get appearance => 'स्वरूप (Appearance)';

  @override
  String get light => 'लाईट (Light)';

  @override
  String get dark => 'डार्क (Dark)';

  @override
  String get system => 'सिस्टम (System)';

  @override
  String get accountSecurity => 'खाते सुरक्षा';

  @override
  String get accountSecurityDesc =>
      'प्रवेश आणि सत्रांचे व्यवस्थापन करून तुमचे अकाउंट सुरक्षित असल्याची खात्री करा।';

  @override
  String get changePassword => 'पासवर्ड बदला';

  @override
  String get logoutFromVaidya => 'VaidyaAssist मधून लॉगआउट करा';

  @override
  String get settingsSubtitle =>
      'आपल्या डिजिटल औषधालय कार्यक्षेत्राला कॉन्फिगर करा आणि आपल्या निदान सहाय्यकाच्या वर्तनाला वैयक्तिकृत करा.';

  @override
  String get subscription => 'सबस्क्रिप्शन (Subscription)';

  @override
  String get logoutAccount => 'खात्यातून लॉगआउट करा';

  @override
  String get settingsSavedSuccess =>
      'सेटिंग्ज आपल्या डिजिटल औषधालय कार्यक्षेत्रात यशस्वीरित्या जतन केल्या गेल्या आहेत.';

  @override
  String get profileInformation => 'प्रोफाइल माहिती';

  @override
  String get updatePhoto => 'फोटो अपडेट करा';

  @override
  String get clinicName => 'क्लिनिकचे नाव';

  @override
  String get emailAddress => 'ईमेल पत्ता';

  @override
  String get appExperience => 'अॅप आणि अनुभव';

  @override
  String get languageSelection => 'भाषा निवड';

  @override
  String get languageSelectionDesc =>
      'इंटरफेस आणि निदान अहवालांचे भाषांतर केले जाईल.';

  @override
  String get aiCommunicationTone => 'एआय संवाद टोन';

  @override
  String get aiToneDesc => 'एआय रुग्ण सारांश कसे तयार करतो ते समायोजित करा.';

  @override
  String get clinicalObjective => 'क्लिनिकल (वस्तुनिष्ठ)';

  @override
  String get simplePatientFriendly => 'सोपे (रुग्ण अनुकूल)';

  @override
  String get detailedEducational => 'तपशीलवार (शैक्षणिक)';

  @override
  String get securitySubscription => 'सुरक्षा आणि सबस्क्रिप्शन';

  @override
  String lastChangedMonths(Object months) {
    return '$months महिन्यांपूर्वी बदलले.';
  }

  @override
  String get professionalPlan => 'प्रोफेशनल प्लॅन';

  @override
  String nextBilling(Object date) {
    return 'पुढील बिलिंग: $date';
  }

  @override
  String get upgrade => 'अपग्रेड करा';

  @override
  String get saveChanges => 'बदल जतन करा';

  @override
  String get notifications => 'Notifications';

  @override
  String get notificationsDesc => 'Manage how you receive alerts and updates.';

  @override
  String get enablePushNotifications => 'Enable Push Notifications';

  @override
  String get joinVaidyaAi => 'Vaidya AI';

  @override
  String get joinDigitalApothecary => 'JOIN THE DIGITAL APOTHECARY';

  @override
  String get practitionerAccountDesc =>
      'Secure, clinical-grade infrastructure for your modern practice.';

  @override
  String get medRegistrationNo => 'MEDICAL REGISTRATION NO.';

  @override
  String get medRegistrationHint => 'MED-99283-X';

  @override
  String get practiceType => 'PRACTICE TYPE';

  @override
  String get practiceTypeHint => 'Select Practice Type';

  @override
  String get generalPractitioner => 'General Practitioner';

  @override
  String get specialist => 'Specialist';

  @override
  String get ayurvedicDoctor => 'Ayurvedic Doctor';

  @override
  String get homeopathicDoctor => 'Homeopathic Doctor';

  @override
  String get clinicAdministrator => 'Clinic Administrator';

  @override
  String get agreeToTermsPrefix => 'I agree to the ';

  @override
  String get clinicalStandards => 'Clinical Standards';

  @override
  String get and => ' and ';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get agreeToTermsSuffix =>
      ' governing practitioner data in the apothecary.';

  @override
  String get createApothecaryAccount => 'Create My Apothecary Account';

  @override
  String get alreadyHaveAccount => 'Already have an account? ';

  @override
  String get login => 'Login';

  @override
  String get endToEndEncryption => 'END-TO-END\nENCRYPTION';

  @override
  String get hipaaCompliant => 'HIPAA COMPLIANT';

  @override
  String get localizedData => 'LOCALIZED DATA';

  @override
  String get ethicalAi => 'ETHICAL AI';

  @override
  String get vaidyaAiVersion =>
      'Vaidya AI v2.4.0-stable | Digital Apothecary Engine';

  @override
  String get settingsSaved => 'Settings saved successfully!';

  @override
  String get errorRetry => 'Retry';

  @override
  String errorOccurred(Object message) {
    return 'Error: $message';
  }

  @override
  String get firstName => 'First Name';

  @override
  String get lastName => 'Last Name';

  @override
  String get mobileNumber => 'Mobile Number';

  @override
  String get clinicCenterName => 'Clinic / Center Name';

  @override
  String get emailId => 'Email ID';

  @override
  String get firstNameHint => 'First Name';

  @override
  String get lastNameHint => 'Last Name';

  @override
  String get mobileHint => 'Mobile Number';

  @override
  String get clinicHint => 'Clinic Name';

  @override
  String get languagePreferences => 'Language Preferences';

  @override
  String get uiLanguage => 'UI Language';

  @override
  String get aiGenerationLanguage => 'AI Generation Language';

  @override
  String get aiResponseTone => 'AI Response Tone';

  @override
  String get clinical => 'Clinical';

  @override
  String get simple => 'Simple';

  @override
  String get detailed => 'Detailed';

  @override
  String get securityPlan => 'Security & Plan';

  @override
  String lastChanged(Object duration) {
    return 'Last changed $duration ago';
  }

  @override
  String currentPlan(Object plan) {
    return 'Current Plan: $plan';
  }

  @override
  String get freeApothecary => 'Free Apothecary';

  @override
  String get planDescription => 'Unlock detailed pulse analysis & history.';

  @override
  String get upgradeToPro => 'Upgrade to Pro';

  @override
  String get signOut => 'Sign Out';

  @override
  String get unsavedChanges => 'You have unsaved changes';

  @override
  String get settingsDescription =>
      'Manage your apothecary preferences and account security.';

  @override
  String get analyzingSymptoms => 'Analyzing symptoms...';

  @override
  String get aiDiagnosisResult => 'AI Diagnosis Result';

  @override
  String get diagnosisSummary => 'Diagnosis Summary';

  @override
  String get possibleConditions => 'Possible Conditions';

  @override
  String get suggestedRemedies => 'Suggested Remedies';

  @override
  String get acceptDiagnosis => 'Accept Diagnosis';

  @override
  String get modifyDiagnosis => 'Modify Diagnosis';

  @override
  String get overrideDiagnosis => 'Override Diagnosis';

  @override
  String get close => 'Close';

  @override
  String get aiDiagnosisSubtitle => 'Digital Apothecary Insight';

  @override
  String get doshaAnalysis => 'Dosha Analysis';

  @override
  String get curatingAyurvedicWisdom => 'Curating Ayurvedic wisdom...';

  @override
  String get modifyDoshaImpact => 'Modify Dosha Impact';
}
