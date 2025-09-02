abstract class AppStates {}

class InitialState extends AppStates {}
class ChangeAllAppLanguageState extends AppStates {}
class ChangeToLoginState extends AppStates {}
class ChangeToResetPasswordState extends AppStates {}
class ChangeToOtpState extends AppStates {}
class ChangeSelectedPageIndexState extends AppStates {}
class DropDownState extends AppStates {}
class HideMenuState extends AppStates {}
class LoadingInLoginFunctionState extends AppStates {}
class FinishLoginFunctionState extends AppStates {}
class FinishGetNeededDataInAppState extends AppStates {}
class LoadingInGetNeededDataInAppState extends AppStates {}
class ChangeSecureState extends AppStates {}