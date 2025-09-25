import 'package:flutter/material.dart';

import 'language_constant.dart';

List<Locale> supportedLocales = [
  const Locale('ar', 'SA'),
  const Locale('en', 'US'),
];

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static final Map<String, Map<String, String>> _localizedValues = {
    'ar': {

      ////Change tires////
      AppLanguageKeys.tireBalancing: 'ترصيص كفرات',
      AppLanguageKeys.wheelAlignment: 'وزن ازرعة',
      ////End////

      ////Delivery laundry////
      AppLanguageKeys.packages: 'الباقات',
      AppLanguageKeys.goldPackage: 'باقة جولد',
      AppLanguageKeys.premiumPackage: 'باقة بريميم',
      AppLanguageKeys.fullCleaning: 'شامل جميع النظافة',
      AppLanguageKeys.interiorPolishing: 'تلميع داخلي للسيارة',
      AppLanguageKeys.writeNotes: 'أكتب ملاحظاتك او احتياجات من مزودي الخدمة',
      AppLanguageKeys.sendRequest: 'إرسال الطلب',
      AppLanguageKeys.requestAccepted: 'تم قبول الطلب',
      AppLanguageKeys.highwayServiceCompleted: 'تم الانتهاء من خدمة الطرق السريعة',
      AppLanguageKeys.searchYourAddress: 'بحث عنوانك',
      AppLanguageKeys.confirmCarLocation: 'تأكيد موقع سيارتك',
      AppLanguageKeys.pleaseSelectCarLocation: 'برجاء قم بتتحديد مكان سيارتك',

      ////End////

      ////Car Batteries////
      AppLanguageKeys.glassReplacement: 'تغيير زجاج',
      AppLanguageKeys.hour: 'ساعة',
      AppLanguageKeys.mobile: 'متنقل',
      AppLanguageKeys.sharedServices: 'الخدمات المشتركة',
      AppLanguageKeys.sparePartsAndProducts: 'قطع غيار ومنتجات',
      AppLanguageKeys.reviews: 'التقييمات',
      AppLanguageKeys.viewReviews: 'عرض التقييمات',
      AppLanguageKeys.bookService: 'حجز الخدمة',
      AppLanguageKeys.newItem: 'جديد',
      AppLanguageKeys.selectServices: 'أختيار الخدمات التي تحتاجها',
      AppLanguageKeys.confirmService: 'تأكيد الخدمة',
      AppLanguageKeys.confirmBookingTime: 'تأكيد التوقيت المناسب لحجز خدماتك',
      AppLanguageKeys.selectDay: 'أختيار اليوم',
      AppLanguageKeys.selectHour: 'أختيار الساعة',
      AppLanguageKeys.confirmServiceBooking: 'تأكيد حجز الخدمة',
      AppLanguageKeys.appointment: 'الميعاد',
      AppLanguageKeys.coupon: 'الكوبون',
      AppLanguageKeys.apply: 'تطبيق',
      ////End////

      ////Order list////
      AppLanguageKeys.createNewRequest: 'إنشاء طلب جديد',
      AppLanguageKeys.requestReceived: 'تم الاستلام',
      AppLanguageKeys.onTheWayToYou: 'في الطريق اليك',
      AppLanguageKeys.cancelBooking: 'إلغاء الحجز',
      AppLanguageKeys.rateService: 'تقييم الخدمة',
      AppLanguageKeys.writeComment: 'أكتب تعليق',
      AppLanguageKeys.addYourComment: 'أضف تعليقك',
      ////end////
      ////Request - Service////
      AppLanguageKeys.selectServiceType: 'أختر نوع الخدمة',
      AppLanguageKeys.roadService: 'خدمة الطريق',
      AppLanguageKeys.serviceDetails: 'تفاصيل الخدمة التي تحتاجها',
      AppLanguageKeys.desiredServicePrice: 'سعر الخدمة المرغوب دفعها',
      AppLanguageKeys.serviceCompletionTime: 'متي تريد انهاء الخدمة',
      AppLanguageKeys.selectCurrentLocation: 'تحديد موقعك الحالي',
      AppLanguageKeys.createServiceRequest: 'إنشاء طلب خدمة',
      AppLanguageKeys.saturday: 'السبت',
      AppLanguageKeys.sunday: 'الأحد',
      AppLanguageKeys.monday: 'الاثنين',
      AppLanguageKeys.tuesday: 'الثلاثاء',
      AppLanguageKeys.wednesday: 'الأربعاء',
      AppLanguageKeys.thursday: 'الخميس',
      AppLanguageKeys.friday: 'الجمعة',
      AppLanguageKeys.enterYourData: 'أدخل بياناتك',
      AppLanguageKeys.waitingForOffers: 'في انتظار استقبال العروض',
      AppLanguageKeys.serviceCenterOffers: 'العروض المقدمة من مراكز الخدمة',
      AppLanguageKeys.mobileMaintenanceOffer: 'صيانة متنقلة',
      AppLanguageKeys.repairCenterName: 'أسم مركز الاصلاح',
      AppLanguageKeys.acceptOffer: 'قبول العرض',
      AppLanguageKeys.rejectRequest: 'رفض الطلب',
      AppLanguageKeys.withinOneDay: 'خلال يوم واحد',

      AppLanguageKeys.requestNumber: 'طلب 44121',
      AppLanguageKeys.daysAgo: 'منذ يومين',
      AppLanguageKeys.expectedArrival: 'توقع الوصول',
      AppLanguageKeys.notes: 'الملاحظات',
      AppLanguageKeys.contactMaintenanceRep: 'التواصل مع مندوب الصيانة',
      AppLanguageKeys.maintenanceRep: 'مندوب الصيانة',
      AppLanguageKeys.trackTechnician: 'تتبع الفني',
      AppLanguageKeys.openMap: 'فتح الخريطة',
      AppLanguageKeys.payBill: 'دفع فاتورة',
      AppLanguageKeys.brakeRepair: 'إصلاح نظام الفرامل (تغيير الفحمات - تيل الفرامل)',
      AppLanguageKeys.electricalRepair: 'إصلاح عطل كهربائي في الأنوار أو العدادات',
      AppLanguageKeys.totalServices: 'إجمالي الخدمات',
      AppLanguageKeys.mobileService: 'خدمة متنقلة',
      AppLanguageKeys.serviceRequest: 'طلب الخدمة',
      AppLanguageKeys.serviceProvidersArrival: 'وصول مزودي الخدمة',
      AppLanguageKeys.serviceCompleted: 'انتهاء الخدمة',
      AppLanguageKeys.serviceRating: 'تقييم الخدمة',
      AppLanguageKeys.notRatedYet: 'لم يتم تقييم بعد',
      ////End////

      ////Change Car////
      AppLanguageKeys.myCarData: 'بيانات سيارتي',
      AppLanguageKeys.myCar: 'سيارتي',
      AppLanguageKeys.setAsPrimaryCar: 'استخدام سيارة كحساب رئيسي',
      AppLanguageKeys.wifeCar: 'سيارة زوجتي',
      AppLanguageKeys.replaceCarAsAccount: 'استبدال السيارة كحساب',
      AppLanguageKeys.mySecondCar: 'سيارتي الثانية',
      AppLanguageKeys.carBills: 'فواتير السيارة',
      AppLanguageKeys.carOwner: 'صاحب السيارة',
      AppLanguageKeys.carChassisNumber: 'رقم الشاصيه',
      AppLanguageKeys.carLicense: 'رخصة السيارة',
      AppLanguageKeys.carFiles: 'ملفات السيارة',
      AppLanguageKeys.transferCar: 'نقل لمستخدم أخر',
      AppLanguageKeys.deleteCar: 'حذف السيارة',
      ////END////

      ////Wallet- Bonus - Send code to friend////
      AppLanguageKeys.wallet: 'المحفظة',
      AppLanguageKeys.currentBalance: 'رصيد الحالي',
      AppLanguageKeys.rechargeWallet: 'شحن المحفظة',
      AppLanguageKeys.walletTransactionDetails: 'تفاصيل عمليات المحفظة',
      AppLanguageKeys.viewAll: 'عرض الكل',
      AppLanguageKeys.bonusBalance: 'هدية رصيد اضافي',
      AppLanguageKeys.payMaintenanceService: 'دفع خدمة لصيانة اصلاح',
      AppLanguageKeys.rechargeFromVisa: 'شحن رصيد من رقم فيز 555',
      AppLanguageKeys.points: 'النقاط',
      AppLanguageKeys.myPoints: 'جميع نقاطي',
      AppLanguageKeys.pointsDetails: 'تفاصيل النقاط',
      AppLanguageKeys.bonusPoints: 'هدية نقاط',
      AppLanguageKeys.redeemPointsService: 'خصم نقاط لاستخدمها في خدمة',
      AppLanguageKeys.rechargeFromVisaPoints: 'شحن رصيد من رقم فيز 555',
      AppLanguageKeys.inviteFriendText: 'ارسل الكود لصديقك واحصل علي 50 ريال عند الاشتراك لأول مره',
      AppLanguageKeys.referralCode: 'الكود',
      AppLanguageKeys.copyCode: 'نسخ الكود',
      AppLanguageKeys.shareLink: 'مشاركة الرابط',
      AppLanguageKeys.sendToFriend: 'ارسل لصديقك',
      AppLanguageKeys.codeCopiedSuccessfully: 'تم نسخ الكود بنجاح!',

      ////End////

      ////Warranty////
      AppLanguageKeys.warrantyPeriod: 'لمدة 5 سنوات',
      AppLanguageKeys.warrantyServiceCenters: 'الاستفادة من ضمان الخدمات عبر مراكزنا المعتمدة',
      AppLanguageKeys.warrantyCarsMarket: 'ضمان السيارات من بيع وشراء في حراج السيارات',
      AppLanguageKeys.warrantyFreeMaintenance: 'تقديم خدمات صيانة مجانية طوال فترة الضمان',
      AppLanguageKeys.warrantySubscription: 'اشتراك في الضمان',
      AppLanguageKeys.balanceChargedSuccessfully: 'تم شحن الرصيد بنجاح',
      AppLanguageKeys.showServicesAtApprovedCenters: 'عرض الخدمات في المراكز المعتمدة',

      ////End////
      ////Profile////
      AppLanguageKeys.notifications: 'الاشعارات',
      AppLanguageKeys.newMessage: 'رسالة جديدة',
      AppLanguageKeys.order255Expired: 'انتهاء طلب 255',
      AppLanguageKeys.onTheWay: 'في الطريق اليك',
      AppLanguageKeys.privacyTitle: 'سياسة الخصوصية',
      AppLanguageKeys.privacyIntro: '''
      في تطبيق "صن"، نولي أهمية قصوى لخصوصية مستخدمينا ونسعى دائمًا لحماية بياناتهم الشخصية. 
      توضح هذه السياسة كيفية جمع واستخدام ومشاركة المعلومات عند استخدامك لخدماتنا.
      
      المعلومات التي نقوم بجمعها
      عند استخدامك لتطبيق صن، قد نقوم بجمع بعض المعلومات اللازمة لتقديم الخدمة، مثل:
      - الاسم الكامل
      - رقم الجوال
      - عنوان البريد الإلكتروني
      - الموقع الجغرافي لتحديد مكان السيارة (بموافقتك)
      - تفاصيل الطلبات السابقة وسجلات الدفع
      
      كيفية استخدام المعلومات
      نستخدم المعلومات التي يتم جمعها من أجل:
      - تقديم خدمات الصيانة بشكل دقيق وفعال
      - التواصل معك بشأن حالة الطلب أو العروض الخاصة
      - تحسين أداء التطبيق وتجربة المستخدم
      - ضمان الأمان ومنع الاستخدام غير المشروع
      
      مشاركة المعلومات
      نحن لا نشارك بياناتك مع أي طرف ثالث خارج نطاق تطبيق "صن" إلا في الحالات التالية:
      - مع مراكز الصيانة المعتمدة لتنفيذ طلباتك
      - مع بوابات الدفع الإلكتروني لإتمام عمليات الدفع
      - إذا تطلب الأمر ذلك قانونيًا أو بطلب من الجهات المختصة
      
      حماية البيانات
      نلتزم بتطبيق أعلى معايير الأمان في حفظ بياناتك، ونستخدم تقنيات حماية متقدمة لضمان عدم الوصول غير المصرح به إلى معلوماتك.
      
      حقوق المستخدم
      يحق لك في أي وقت:
      - طلب نسخة من بياناتك الشخصية
      - تعديل أو تحديث بياناتك
      - طلب حذف حسابك من التطبيق
      
      التعديلات على السياسة
      قد نقوم بتحديث سياسة الخصوصية من وقت لآخر. وسيتم إشعارك بأي تغييرات هامة من خلال التطبيق أو عبر البريد الإلكتروني.
      
      التواصل معنا
      لأي استفسارات تتعلق بسياسة الخصوصية، يمكنك التواصل معنا عبر:
      📧 البريد الإلكتروني: privacy@sun-app.com
      📞 الدعم الفني: 9200XXXXXX
      ''',
      AppLanguageKeys.personalData: 'البيانات الشخصية',
      AppLanguageKeys.username: 'اسم المستخدم',
      AppLanguageKeys.nationality: 'الجنسية',
      AppLanguageKeys.language: 'اللغة',
      AppLanguageKeys.arabic: 'العربية',
      AppLanguageKeys.english: 'الانجليزية',
      AppLanguageKeys.myAddress: 'عنواني',
      AppLanguageKeys.yourCarAddress: 'عنوان سيارتك',
      AppLanguageKeys.addAddress: 'أضافة عنوان',
      AppLanguageKeys.creditCards: 'كروت الأئتمان البنكي',
      AppLanguageKeys.cardName: 'أسم الكارت',
      AppLanguageKeys.cardNumber: 'رقم الكارت',
      AppLanguageKeys.cvv: '3 ارقام CVV',
      AppLanguageKeys.expiryDate: 'تاريخ الانتهاء',
      AppLanguageKeys.addPaymentCard: 'أضافة بطاقه دفع',
      AppLanguageKeys.financialTransactions: 'المعاملات المالية',
      AppLanguageKeys.tires: 'إطارات',
      AppLanguageKeys.qrCode: 'QR code',
      AppLanguageKeys.scanQrCode: 'مسح QR code',
      ////End////

      ////InsuranceNew////
      AppLanguageKeys.selectInsuranceType: 'برجاء تحديد نوع التأمين الخاص بك',
      AppLanguageKeys.integrativeInsurance: 'تأمين تكاملي',
      AppLanguageKeys.carModel: 'موديل السيارة',
      AppLanguageKeys.edit: 'تعديل',
      AppLanguageKeys.sixMonthlyPayments: '6 دفعات شهرية',
      AppLanguageKeys.twelveMonthlyPayments: '12 دفعة شهرية',
      AppLanguageKeys.semiAnnual: 'نصف سنوي',
      AppLanguageKeys.annual: 'سنوي',
      AppLanguageKeys.insuranceAccountRegistration: 'تسجيل حساب التأمين',
      AppLanguageKeys.firstPayment: 'سداد أول دفعة',
      ////End////


      ////Insurance////
      AppLanguageKeys.payment: 'الدفع',
      AppLanguageKeys.insuranceOffers: 'عروض التأمينات (نيسان CVR)',
      AppLanguageKeys.insuranceOffersOnly: 'عروض التأمينات',
      AppLanguageKeys.comprehensiveInsurance: 'تأمين شامل',
      AppLanguageKeys.thirdPartyInsurance: 'تأمين ضد الغير',
      AppLanguageKeys.bestOffer: 'أفضل عرض',
      AppLanguageKeys.scienceInsurance: 'ساينس للتأمينات',
      AppLanguageKeys.annualPayment: 'دفعة سنوية',
      AppLanguageKeys.cooperativeInsurance: 'التعاونية للتأمينات السيارات',
      AppLanguageKeys.enterPolicyData: 'أدخل بيانات الوثيقة لاظهار الدفعات المستحقة',
      AppLanguageKeys.policyNumber: 'رقم وثيقة التأمين',
      AppLanguageKeys.identityVerification: 'التحقق من الهوية',
      AppLanguageKeys.checkAbsherAccount: 'تحقق في حساب نفاذ الوطني',
      AppLanguageKeys.loginViaAbsher: 'الدخول الي حساب النفاذ عبر النفاذ الوطني الموحد',
      AppLanguageKeys.nationalIdOrIqama: 'رقم الهوية الوطنية / رقم الإقامة',
      AppLanguageKeys.verifyAbsher: 'التحقق من النفاذ',
      AppLanguageKeys.yourInsuranceData: 'بيانات التأمين الخاصة بك',
      AppLanguageKeys.beneficiaryName: 'اسم المستفيد',
      AppLanguageKeys.insurancePolicyNumber: 'رقم وثيقة التأمين',
      AppLanguageKeys.nationalIdNumber: 'رقم الهوية',
      AppLanguageKeys.carPlateNumber: 'رقم لوحة السيارة',
      AppLanguageKeys.chassisNumber: 'رقم الشاصيه',
      AppLanguageKeys.insuranceType: 'نوع التأمين',
      AppLanguageKeys.insuranceValue: 'قيمة التأمين',
      AppLanguageKeys.installmentValue: 'قيمة القسط',
      AppLanguageKeys.linkInsuranceWithSanad: 'ربط حساب التأمين مع صن',
      AppLanguageKeys.pleaseWait: 'برجاء الانتظار',
      AppLanguageKeys.policyData: 'بيانات بوليصة التأمين',
      AppLanguageKeys.annualPayments: 'الدفعات السنوية',
      AppLanguageKeys.firstInstallment: 'الدفعة الأولى - 20/3',
      AppLanguageKeys.paid: 'تم السداد',
      AppLanguageKeys.details: 'تفاصيل',
      AppLanguageKeys.secondInstallment: 'الدفعة الثانية - 20/5',
      AppLanguageKeys.thirdInstallment: 'الدفعة الثالثة - 20/3',
      AppLanguageKeys.payInstallment: 'سداد القسط',
      AppLanguageKeys.notPaid: 'لم يتم السداد',
      AppLanguageKeys.fourthInstallment: 'الدفعة الرابعة - 20/5',
      AppLanguageKeys.nextInstallmentJuly: 'القسط القادم 7/20',
      AppLanguageKeys.nextInstallmentAugust: 'القسط القادم 8/20',
      AppLanguageKeys.invoice: 'الفاتورة',
      AppLanguageKeys.insuranceInstallment: 'قسط التأمين',
      AppLanguageKeys.taxes: 'الضرائب',
      AppLanguageKeys.total: 'الإجمالي',
      AppLanguageKeys.paymentMethod: 'طريقة الدفع',
      AppLanguageKeys.selectPaymentOptionFirst: 'يرجى اختيار طريقة الدفع أولاً',
      AppLanguageKeys.thirdInstallmentDetails: 'تفاصيل الدفعة الثالثة 20/3',
      AppLanguageKeys.paidBy: 'تم الدفع بواسطة',

      ////END////

      AppLanguageKeys.startNow:'أبدء الأن',
      AppLanguageKeys.yourCarIsSafeWithSan:'سيارتك بأمان مع صان',
      AppLanguageKeys.maintenanceAndRepairServices:'خدمات الصيانة والاصلاح',
      AppLanguageKeys.emergencyService:'خدمة الطوارئ',
      AppLanguageKeys.buyingAndSellingCars:'بيع وشراء سيارات',
      AppLanguageKeys.listYourCarInASafeAndReliableAuctionWithSan:'اعرض سيارتك في مزاد آمن وموثوق مع صان ',
      AppLanguageKeys.highwayAssistance:'المساعدة علي الطريق السريعة  على مدار الساعة اينما كنت ',
      AppLanguageKeys.weSendYouProfessional:' نرسل لك فنيين محترفين يشخصون المشكلة ويصلحونها.',
      AppLanguageKeys.integratedSolutions:'حلول متكاملة من الضمان والتأمين لجميع الخدمات في مكان واحد',
      AppLanguageKeys.login:'تسجيل الدخول ',
      AppLanguageKeys.loginAsAnIndividualOrCompany:'قم بتسجيل الدخول كأفراد او شركات',
      AppLanguageKeys.registerAsAnIndividual:'تسجيل كأفراد',
      AppLanguageKeys.registerAsCompanies:'تسجيل كشركات',
      AppLanguageKeys.orRegisterVia:'أو تسجيل عبر',
      AppLanguageKeys.appleAccount:'حساب أبل',
      AppLanguageKeys.googleAccount:'جوجل',
      AppLanguageKeys.noAccount:'ليس لديك حساب',
      AppLanguageKeys.registerHere:'تسجيل هنا',
      AppLanguageKeys.pleaseEnterYourPhoneNumberAndPassword :'برجاء ادخال رقم الهاتف وكلمة المرور',
      AppLanguageKeys.phoneNumber:'رقم الهاتف',
      AppLanguageKeys.password:'كلمة المرور',
      AppLanguageKeys.forgotPassword :'نسيت كلمة المرور',
     AppLanguageKeys.redeemFromHere :"استرد من هنا",
     AppLanguageKeys.loginAsAGuestUser :'دخول كضيف مستخدم',
      AppLanguageKeys.userName:'أسم المستخدم',
      AppLanguageKeys.email:'الايميل',
      AppLanguageKeys.resetPassword:'إعادة كلمة المرور',
      AppLanguageKeys.createAnAccount:'إنشاء حساب',
      AppLanguageKeys.accountInformation:'برجاء ادخال بيانات الحساب وكلمة المرور',
      AppLanguageKeys.createAnAccountInTheNameOfACompany:'انشاء حساب باسم شركة',
      AppLanguageKeys.confirmPin :'تأكيد الرقم السري',
      AppLanguageKeys.pleaseEnterThePinSentToYourPhoneNumber:'برجاء ادخال رقم السري التي تم ارسالها عل رقم الهاتف',
      AppLanguageKeys.iDidNotReceiveAMessage :'لم اتلقي رسالة',
      AppLanguageKeys.resend:'إعادة ارسال',
      AppLanguageKeys.yourCarData   :'بيانات سيارتك',
      AppLanguageKeys.toViewYourCarsModelsServicesAndCenters :'لاستعراض خدمات ومراكز الموديل سيارتك',
      AppLanguageKeys.chooseTheCategory :'أختر الفئة ',
      AppLanguageKeys.modelYear :'سنة الموديل',
      AppLanguageKeys.yourCarName :'أسم سيارتك',
      AppLanguageKeys.exampleModelName :'(مثال سيارتي الهوندا - سيارة زوجتي )',
      AppLanguageKeys.chooseYourCarModel: 'أختر موديل سيارتك',
      AppLanguageKeys.youCanSearchToSelectYourCarCategory: 'يمكنك البحث لاختيار فئة سيارتك',
      AppLanguageKeys.profile: 'الملف الشخصي',
      AppLanguageKeys.skipLater: 'تخطي لاحقا',
      AppLanguageKeys.next: 'التالي',
      AppLanguageKeys.locationServiceDisabled: "خدمة الموقع غير مفعلة",
      AppLanguageKeys.locationNotFound: "المكان غير موجود",
      AppLanguageKeys.yourLocation: 'موقعك الجغرافي',
      AppLanguageKeys.nearbyServices: 'لاستعراض خدمات قريبة منك',
      AppLanguageKeys.maintenanceAndRepair: 'الصيانة والاصلاح',
      AppLanguageKeys.oilChange: 'تغيير الزيوت',
      AppLanguageKeys.highways: 'الطرق السريعة',
      AppLanguageKeys.carElectricity: 'كهرباء سيارات',
      AppLanguageKeys.spareParts: 'قطع الغيار',
      AppLanguageKeys.mobileMaintenance: 'صيانة متنقلة',
      AppLanguageKeys.carAuction: 'حراج سيارات',
      AppLanguageKeys.transportService: 'خدمة النقل',
      AppLanguageKeys.favoriteServices: 'الخدمات المفضلة',
      AppLanguageKeys.selectFavoriteServices: 'يمكنك تحديد الخدمات المفضلة لدينا',
      AppLanguageKeys.chooseFavoriteServices: 'أختر الخدمات المفضلة',
      AppLanguageKeys.congratulations: 'مبروووووك, لقد حصلت علي',
      AppLanguageKeys.gift: 'هدية',
      AppLanguageKeys.sunWarranty: 'ضمان صن',
      AppLanguageKeys.fiveYearsWarranty: 'لمدة 5 سنوات هدية',
      AppLanguageKeys.showServicesNow: 'عرض الخدمات الأن',
      AppLanguageKeys.sunWarrantyFeatures: 'مميزات ضمان صن',
      AppLanguageKeys.warrantyCenters: 'الاستفادة من ضمان الخدمات عبر مراكزنا المتعمدة',
      AppLanguageKeys.carWarrantyAuction: 'ضمان السيارات من بيع وشراء في حراج السيارات',
      AppLanguageKeys.freeMaintenance: 'تقديم خدمات صيانة مجانية طوال فترة الضمان',
      AppLanguageKeys.home: 'الرئيسية',
      AppLanguageKeys.myOrders: 'طلباتي',
      AppLanguageKeys.map: 'الخريطة',
      AppLanguageKeys.requestService: 'أطلب خدمة',
      AppLanguageKeys.services: 'الخدمات',
      AppLanguageKeys.searchPlaceholder: 'إبحث عن اي خدمة او اسم مركز او أي شئ',
      AppLanguageKeys.tireSpareParts: "قطع غيار الاطارات",
      AppLanguageKeys.discount50: "خصومات 50%",
      AppLanguageKeys.variousServices: "خدمات متنوعة",
      AppLanguageKeys.repairAndMaintenance: "الصيانة والاصلاح",
      AppLanguageKeys.oilServices: "تغيير زيوت",
      AppLanguageKeys.cleaningAndWashing: "غسيل ونظافة",
      AppLanguageKeys.carInsurance: "تأمين السيارة",
      AppLanguageKeys.carMarket: "حراج السيارات",
      AppLanguageKeys.periodicMaintenance: "صيانة دورية",
      AppLanguageKeys.sparePartsService: "قطع غيار",
      AppLanguageKeys.carWarranty: "ضمان السيارات",
      AppLanguageKeys.glass: "زجاج",
      AppLanguageKeys.tireChange: "تغيير الاطارات",
      AppLanguageKeys.batteries: "بطاريات",
      AppLanguageKeys.roadAssistance: "مساعدة الطريق",
      AppLanguageKeys.from:"من"



    },
    'en': {

      ////Change tires////
      AppLanguageKeys.tireBalancing: 'Tire Balancing',
      AppLanguageKeys.wheelAlignment: 'Wheel Alignment',
      ////End////

      ////Delivery laundry////
      AppLanguageKeys.packages: 'Packages',
      AppLanguageKeys.goldPackage: 'Gold Package',
      AppLanguageKeys.premiumPackage: 'Premium Package',
      AppLanguageKeys.fullCleaning: 'Full Cleaning Included',
      AppLanguageKeys.interiorPolishing: 'Interior Car Polishing',
      AppLanguageKeys.writeNotes: 'Write your notes or needs for service providers',
      AppLanguageKeys.sendRequest: 'Send Request',
      AppLanguageKeys.requestAccepted: 'Request Accepted',
      AppLanguageKeys.highwayServiceCompleted: 'Highway Service Completed',
      AppLanguageKeys.searchYourAddress: 'Search Your Address',
      AppLanguageKeys.confirmCarLocation: 'Confirm Your Car Location',
      AppLanguageKeys.pleaseSelectCarLocation: 'Please select your car location',
      ////End////

      ////Car Batteries////
      AppLanguageKeys.glassReplacement: 'Glass Replacement',
      AppLanguageKeys.hour: 'Hour',
      AppLanguageKeys.mobile: 'Mobile',
      AppLanguageKeys.sharedServices: 'Shared Services',
      AppLanguageKeys.sparePartsAndProducts: 'Spare Parts & Products',
      AppLanguageKeys.reviews: 'Reviews',
      AppLanguageKeys.viewReviews: 'View Reviews',
      AppLanguageKeys.bookService: 'Book Service',
      AppLanguageKeys.newItem: 'New',
      AppLanguageKeys.selectServices: 'Select the services you need',
      AppLanguageKeys.confirmService: 'Confirm Service',
      AppLanguageKeys.confirmBookingTime: 'Confirm the suitable time to book your services',
      AppLanguageKeys.selectDay: 'Select Day',
      AppLanguageKeys.selectHour: 'Select Hour',
      AppLanguageKeys.confirmServiceBooking: 'Confirm Service Booking',
      AppLanguageKeys.appointment: 'Appointment',
      AppLanguageKeys.coupon: 'Coupon',
      AppLanguageKeys.apply: 'Apply',
      ////End////

      ////Order list////
      AppLanguageKeys.createNewRequest: 'Create New Request',
      AppLanguageKeys.requestReceived: 'Request Received',
      AppLanguageKeys.onTheWayToYou: 'On the Way to You',
      AppLanguageKeys.cancelBooking: 'Cancel Booking',
      AppLanguageKeys.rateService: 'Rate Service',
      AppLanguageKeys.writeComment: 'Write Comment',
      AppLanguageKeys.addYourComment: 'Add Your Comment',
      ////end////

      ////Request - Service////
      AppLanguageKeys.selectServiceType: 'Select Service Type',
      AppLanguageKeys.roadService: 'Roadside Service',
      AppLanguageKeys.serviceDetails: 'Service Details Needed',
      AppLanguageKeys.desiredServicePrice: 'Desired Service Price',
      AppLanguageKeys.serviceCompletionTime: 'When do you want the service completed?',
      AppLanguageKeys.selectCurrentLocation: 'Select Your Current Location',
      AppLanguageKeys.createServiceRequest: 'Create Service Request',
      AppLanguageKeys.saturday: 'Saturday',
      AppLanguageKeys.sunday: 'Sunday',
      AppLanguageKeys.monday: 'Monday',
      AppLanguageKeys.tuesday: 'Tuesday',
      AppLanguageKeys.wednesday: 'Wednesday',
      AppLanguageKeys.thursday: 'Thursday',
      AppLanguageKeys.friday: 'Friday',
      AppLanguageKeys.enterYourData: 'Enter your data',
      AppLanguageKeys.waitingForOffers: 'Waiting to receive offers',
      AppLanguageKeys.serviceCenterOffers: 'Offers from Service Centers',
      AppLanguageKeys.mobileMaintenanceOffer: 'Mobile Maintenance',
      AppLanguageKeys.repairCenterName: 'Repair Center Name',
      AppLanguageKeys.acceptOffer: 'Accept Offer',
      AppLanguageKeys.rejectRequest: 'Reject Request',
      AppLanguageKeys.withinOneDay: 'Within One Day',
      AppLanguageKeys.requestNumber: 'Request 44121',
      AppLanguageKeys.daysAgo: '2 days ago',
      AppLanguageKeys.expectedArrival: 'Expected Arrival',
      AppLanguageKeys.notes: 'Notes',
      AppLanguageKeys.contactMaintenanceRep: 'Contact Maintenance Rep',
      AppLanguageKeys.maintenanceRep: 'Maintenance Rep',
      AppLanguageKeys.trackTechnician: 'Track Technician',
      AppLanguageKeys.openMap: 'Open Map',
      AppLanguageKeys.payBill: 'Pay Bill',
      AppLanguageKeys.brakeRepair: 'Brake System Repair (Brake Pads Replacement)',
      AppLanguageKeys.electricalRepair: 'Electrical Repair (Lights or Dashboard)',
      AppLanguageKeys.totalServices: 'Total Services',
      AppLanguageKeys.mobileService: 'Mobile Service',
      AppLanguageKeys.serviceRequest: 'Service Request',
      AppLanguageKeys.serviceProvidersArrival: 'Service Providers Arrival',
      AppLanguageKeys.serviceCompleted: 'Service Completed',
      AppLanguageKeys.serviceRating: 'Service Rating',
      AppLanguageKeys.notRatedYet: 'Not Rated Yet',
      ////End////

      ////Change Car////
      AppLanguageKeys.myCarData: 'My Car Data',
      AppLanguageKeys.myCar: 'My Car',
      AppLanguageKeys.setAsPrimaryCar: 'Use Car as Primary Account',
      AppLanguageKeys.wifeCar: 'My Wife\'s Car',
      AppLanguageKeys.replaceCarAsAccount: 'Replace Car as Account',
      AppLanguageKeys.mySecondCar: 'My Second Car',
      AppLanguageKeys.carBills: 'Car Bills',
      AppLanguageKeys.carOwner: 'Car Owner',
      AppLanguageKeys.carChassisNumber: 'Chassis Number',
      AppLanguageKeys.carLicense: 'Car License',
      AppLanguageKeys.carFiles: 'Car Files',
      AppLanguageKeys.transferCar: 'Transfer to another user',
      AppLanguageKeys.deleteCar: 'Delete Car',
      ////END////

      ////Wallet- Bonus - Send code to friend////
      AppLanguageKeys.wallet: 'Wallet',
      AppLanguageKeys.currentBalance: 'Current Balance',
      AppLanguageKeys.rechargeWallet: 'Recharge Wallet',
      AppLanguageKeys.walletTransactionDetails: 'Wallet Transaction Details',
      AppLanguageKeys.viewAll: 'View All',
      AppLanguageKeys.bonusBalance: 'Bonus Balance',
      AppLanguageKeys.payMaintenanceService: 'Pay Maintenance Service',
      AppLanguageKeys.rechargeFromVisa: 'Recharge from Visa No. 555',
      AppLanguageKeys.points: 'Points',
      AppLanguageKeys.myPoints: 'My Points',
      AppLanguageKeys.pointsDetails: 'Points Details',
      AppLanguageKeys.bonusPoints: 'Bonus Points',
      AppLanguageKeys.redeemPointsService: 'Redeem Points for Service',
      AppLanguageKeys.rechargeFromVisaPoints: 'Recharge from Visa No. 555',
      AppLanguageKeys.inviteFriendText: 'Send the code to your friend and get 50 SAR on their first subscription',
      AppLanguageKeys.referralCode: 'Code',
      AppLanguageKeys.copyCode: 'Copy Code',
      AppLanguageKeys.shareLink: 'Share Link',
      AppLanguageKeys.sendToFriend: 'Send to Friend',
      AppLanguageKeys.codeCopiedSuccessfully: 'Code copied successfully!',

      ////End////

      ////Warranty////
      AppLanguageKeys.warrantyPeriod: 'For 5 years',
      AppLanguageKeys.warrantyServiceCenters: 'Benefit from warranty services through our authorized centers',
      AppLanguageKeys.warrantyCarsMarket: 'Car warranty for buying and selling in the car market',
      AppLanguageKeys.warrantyFreeMaintenance: 'Free maintenance services throughout the warranty period',
      AppLanguageKeys.warrantySubscription: 'Warranty Subscription',
      AppLanguageKeys.balanceChargedSuccessfully: 'Balance charged successfully',
      AppLanguageKeys.showServicesAtApprovedCenters: 'Show services at approved centers',

      ////End////

      ////Profile////
      AppLanguageKeys.notifications: 'Notifications',
      AppLanguageKeys.newMessage: 'New Message',
      AppLanguageKeys.order255Expired: 'Order 255 Expired',
      AppLanguageKeys.onTheWay: 'On the Way to You',
      AppLanguageKeys.privacyTitle: 'Privacy Policy',
      AppLanguageKeys.privacyIntro: '''
      At "Sun" app, we place the utmost importance on the privacy of our users and always strive to protect their personal data. 
      This policy explains how information is collected, used, and shared when you use our services.
      
      Information We Collect
      When using Sun App, we may collect some necessary information to provide the service, such as:
      - Full Name
      - Mobile Number
      - Email Address
      - Location (with your permission, to identify the car location)
      - Order history and payment records
      
      How We Use the Information
      We use the collected information to:
      - Provide maintenance services accurately and efficiently
      - Communicate with you regarding order status or special offers
      - Improve app performance and user experience
      - Ensure security and prevent unauthorized use
      
      Information Sharing
      We do not share your data with any third party outside the "Sun" app except in the following cases:
      - With authorized maintenance centers to fulfill your requests
      - With online payment gateways to complete transactions
      - When legally required or requested by authorities
      
      Data Protection
      We are committed to applying the highest security standards to protect your data and use advanced protection technologies to prevent unauthorized access.
      
      User Rights
      You have the right at any time to:
      - Request a copy of your personal data
      - Modify or update your data
      - Request to delete your account from the app
      
      Policy Changes
      We may update the privacy policy from time to time. You will be notified of any major changes via the app or email.
      
      Contact Us
      For any inquiries regarding the privacy policy, you can contact us via:
      📧 Email: privacy@sun-app.com
      📞 Support: 9200XXXXXX
      ''',
      AppLanguageKeys.personalData: 'Personal Data',
      AppLanguageKeys.username: 'Username',
      AppLanguageKeys.nationality: 'Nationality',
      AppLanguageKeys.language: 'Language',
      AppLanguageKeys.arabic: 'Arabic',
      AppLanguageKeys.english: 'English',
      AppLanguageKeys.myAddress: 'My Address',
      AppLanguageKeys.yourCarAddress: 'Your Car Address',
      AppLanguageKeys.addAddress: 'Add Address',
      AppLanguageKeys.creditCards: 'Bank Credit Cards',
      AppLanguageKeys.cardName: 'Card Name',
      AppLanguageKeys.cardNumber: 'Card Number',
      AppLanguageKeys.cvv: '3-digit CVV',
      AppLanguageKeys.expiryDate: 'Expiry Date',
      AppLanguageKeys.addPaymentCard: 'Add Payment Card',
      AppLanguageKeys.financialTransactions: 'Financial Transactions',
      AppLanguageKeys.tires: 'Tires',
      AppLanguageKeys.qrCode: 'QR Code',
      AppLanguageKeys.scanQrCode: 'Scan QR Code',
      ////End////

      ////InsuranceNew////
      AppLanguageKeys.selectInsuranceType: 'Please select your insurance type',
      AppLanguageKeys.integrativeInsurance: 'Integrative Insurance',
      AppLanguageKeys.carModel: 'Car Model',
      AppLanguageKeys.edit: 'Edit',
      AppLanguageKeys.sixMonthlyPayments: '6 Monthly Payments',
      AppLanguageKeys.twelveMonthlyPayments: '12 Monthly Payments',
      AppLanguageKeys.semiAnnual: 'Semi-Annual',
      AppLanguageKeys.annual: 'Annual',
      AppLanguageKeys.insuranceAccountRegistration: 'Insurance Account Registration',
      AppLanguageKeys.firstPayment: 'First Payment',

      ////End////

      ////Insurance////
      AppLanguageKeys.payment: 'Payment',
      AppLanguageKeys.insuranceOffers: 'Insurance Offers (Nissan CVR)',
      AppLanguageKeys.insuranceOffersOnly: 'Insurance Offers',
      AppLanguageKeys.comprehensiveInsurance: 'Comprehensive Insurance',
      AppLanguageKeys.thirdPartyInsurance: 'Third Party Insurance',
      AppLanguageKeys.bestOffer: 'Best Offer',
      AppLanguageKeys.scienceInsurance: 'Science Insurance',
      AppLanguageKeys.annualPayment: 'Annual Payment',
      AppLanguageKeys.cooperativeInsurance: 'Cooperative Car Insurance',
      AppLanguageKeys.enterPolicyData: 'Enter policy details to show due payments',
      AppLanguageKeys.policyNumber: 'Insurance Policy Number',
      AppLanguageKeys.identityVerification: 'Identity Verification',
      AppLanguageKeys.checkAbsherAccount: 'Check Absher Account',
      AppLanguageKeys.loginViaAbsher: 'Login via Absher Unified National Access',
      AppLanguageKeys.nationalIdOrIqama: 'National ID / Iqama Number',
      AppLanguageKeys.verifyAbsher: 'Verify Absher',
      AppLanguageKeys.yourInsuranceData: 'Your Insurance Data',
      AppLanguageKeys.beneficiaryName: 'Beneficiary Name',
      AppLanguageKeys.insurancePolicyNumber: 'Insurance Policy Number',
      AppLanguageKeys.nationalIdNumber: 'National ID Number',
      AppLanguageKeys.carPlateNumber: 'Car Plate Number',
      AppLanguageKeys.chassisNumber: 'Chassis Number',
      AppLanguageKeys.insuranceType: 'Insurance Type',
      AppLanguageKeys.insuranceValue: 'Insurance Value',
      AppLanguageKeys.installmentValue: 'Installment Value',
      AppLanguageKeys.linkInsuranceWithSanad: 'Link Insurance Account with SANAD',
      AppLanguageKeys.pleaseWait: 'Please wait',
      AppLanguageKeys.policyData: 'Policy Data',
      AppLanguageKeys.annualPayments: 'Annual Payments',
      AppLanguageKeys.firstInstallment: 'First Installment - 20/3',
      AppLanguageKeys.paid: 'Paid',
      AppLanguageKeys.details: 'Details',
      AppLanguageKeys.secondInstallment: 'Second Installment - 20/5',
      AppLanguageKeys.thirdInstallment: 'Third Installment - 20/3',
      AppLanguageKeys.payInstallment: 'Pay Installment',
      AppLanguageKeys.notPaid: 'Not Paid',
      AppLanguageKeys.fourthInstallment: 'Fourth Installment - 20/5',
      AppLanguageKeys.nextInstallmentJuly: 'Next Installment 7/20',
      AppLanguageKeys.nextInstallmentAugust: 'Next Installment 8/20',
      AppLanguageKeys.invoice: 'Invoice',
      AppLanguageKeys.insuranceInstallment: 'Insurance Installment',
      AppLanguageKeys.taxes: 'Taxes',
      AppLanguageKeys.total: 'Total',
      AppLanguageKeys.paymentMethod: 'Payment Method',
      AppLanguageKeys.selectPaymentOptionFirst: 'Please select a payment option first',
      AppLanguageKeys.thirdInstallmentDetails: 'Third Installment Details 20/3',
      AppLanguageKeys.paidBy: 'Paid by',

      ////End////

      AppLanguageKeys.startNow:'Start now',
      AppLanguageKeys.yourCarIsSafeWithSan:'Your car is safe with San',
      AppLanguageKeys.maintenanceAndRepairServices:'Maintenance and repair services',
      AppLanguageKeys.emergencyService:'Emergency service',
      AppLanguageKeys.buyingAndSellingCars:'Buying and selling cars',
      AppLanguageKeys.listYourCarInASafeAndReliableAuctionWithSan:'List your car in a safe and reliable auction with San',
      AppLanguageKeys.highwayAssistance:'24/7 Highway Assistance Wherever You Are',
      AppLanguageKeys.weSendYouProfessional:'We send you professional technicians who diagnose and fix the problem.',
      AppLanguageKeys.integratedSolutions:'Integrated solutions for warranty and insurance for all services in one place',
      AppLanguageKeys.login:'Login',
      AppLanguageKeys.loginAsAnIndividualOrCompany:'Log in as an individual or company',
      AppLanguageKeys.registerAsAnIndividual:'Register as an individual',
      AppLanguageKeys.registerAsCompanies:'Register as companies',
      AppLanguageKeys.orRegisterVia:'Or register via',
      AppLanguageKeys.appleAccount:'Apple account',
      AppLanguageKeys.googleAccount:'Google',
      AppLanguageKeys.noAccount:"You don't have an account",
      AppLanguageKeys.registerHere:'Register here',
      AppLanguageKeys.pleaseEnterYourPhoneNumberAndPassword :'Please enter your phone number and password',
      AppLanguageKeys.phoneNumber:'Phone number',
      AppLanguageKeys.password:'Password',
      AppLanguageKeys.forgotPassword :'Forgot password',
      AppLanguageKeys.redeemFromHere :"Redeem from here",
      AppLanguageKeys.loginAsAGuestUser :'Login as a guest user',
      AppLanguageKeys.userName:'User name',
      AppLanguageKeys.email:'Email',
      AppLanguageKeys.resetPassword:'Reset password',
      AppLanguageKeys.createAnAccount:'Create an account',
      AppLanguageKeys.accountInformation:'Please enter account information and password',
      AppLanguageKeys.createAnAccountInTheNameOfACompany:'Create an account in the name of a company',
      AppLanguageKeys.confirmPin :'Confirm pin',
      AppLanguageKeys.pleaseEnterThePinSentToYourPhoneNumber:'Please enter the pin sent to your phone number',
      AppLanguageKeys.iDidNotReceiveAMessage :'I did not receive a message',
      AppLanguageKeys.resend:'Resend',
      AppLanguageKeys.yourCarData   :'your car data',
      AppLanguageKeys.toViewYourCarsModelsServicesAndCenters :"To view your car's model's services and centers",
      AppLanguageKeys.chooseTheCategory :"Choose the category",
      AppLanguageKeys.modelYear :"Model year",
      AppLanguageKeys.yourCarName :"Your car name",
      AppLanguageKeys.exampleModelName :"(Example: My Honda - My wife's car)",
      AppLanguageKeys.chooseYourCarModel: 'Choose your car model',
      AppLanguageKeys.youCanSearchToSelectYourCarCategory: 'You can search to select your car category',
      AppLanguageKeys.profile: 'Profile',
      AppLanguageKeys.skipLater: 'Skip later',
      AppLanguageKeys.next: 'Next',
      AppLanguageKeys.locationServiceDisabled: "Location service disabled",
      AppLanguageKeys.locationNotFound: "Location not found",
      AppLanguageKeys.yourLocation: 'Your location',
      AppLanguageKeys.nearbyServices: 'Browse nearby services',
      AppLanguageKeys.maintenanceAndRepair: 'Maintenance and repair',
      AppLanguageKeys.oilChange: 'Oil change',
      AppLanguageKeys.highways: 'Highways',
      AppLanguageKeys.carElectricity: 'Car electricity',
      AppLanguageKeys.spareParts: 'Spare parts',
      AppLanguageKeys.mobileMaintenance: 'Mobile maintenance',
      AppLanguageKeys.carAuction: 'Car auction',
      AppLanguageKeys.transportService: 'Transport service',
      AppLanguageKeys.favoriteServices: 'Favorite services',
      AppLanguageKeys.selectFavoriteServices: 'You can select your favorite services',
      AppLanguageKeys.chooseFavoriteServices: 'Choose favorite services',
      AppLanguageKeys.congratulations: 'Congratulations, you got',
      AppLanguageKeys.gift: 'Gift',
      AppLanguageKeys.sunWarranty: 'Sun warranty',
      AppLanguageKeys.fiveYearsWarranty: '5 years warranty gift',
      AppLanguageKeys.showServicesNow: 'Show services now',
      AppLanguageKeys.sunWarrantyFeatures: 'Sun warranty features',
      AppLanguageKeys.warrantyCenters: 'Benefit from warranty at our authorized centers',
      AppLanguageKeys.carWarrantyAuction: 'Car warranty for buy/sell in car auction',
      AppLanguageKeys.freeMaintenance: 'Free maintenance during warranty period',
      AppLanguageKeys.home: 'Home',
      AppLanguageKeys.myOrders: 'My orders',
      AppLanguageKeys.map: 'Map',
      AppLanguageKeys.requestService: 'Request a service',
      AppLanguageKeys.services: 'Services',
      AppLanguageKeys.searchPlaceholder: 'Search for any service, center name, or anything',
      AppLanguageKeys.tireSpareParts: "Tire spare parts",
      AppLanguageKeys.discount50: "50% discount",
      AppLanguageKeys.variousServices: "Various services",
      AppLanguageKeys.repairAndMaintenance: "Repair and maintenance",
      AppLanguageKeys.oilServices: "Oil services",
      AppLanguageKeys.cleaningAndWashing: "Cleaning and washing",
      AppLanguageKeys.carInsurance: "Car insurance",
      AppLanguageKeys.carMarket: "Car market",
      AppLanguageKeys.periodicMaintenance: "Periodic maintenance",
      AppLanguageKeys.sparePartsService: "Spare parts service",
      AppLanguageKeys.carWarranty: "Car warranty",
      AppLanguageKeys.glass: "Glass",
      AppLanguageKeys.tireChange: "Tire change",
      AppLanguageKeys.batteries: "Batteries",
      AppLanguageKeys.roadAssistance: "Road assistance",
      AppLanguageKeys.from:"from"



    }
  };



  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  String translate(String key) {
    return _localizedValues[locale.languageCode]![key] ?? key;
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return supportedLocales.contains(locale);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}