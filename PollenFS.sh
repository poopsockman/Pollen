#!/bin/bash

if [ $(id -u) -ne 0 ]; then
    echo "Run this script as root (sudo su)"
    exit
fi

echo "+##############################################+"
echo "# Welcome To Pollen! (RootFS)                   #"
echo "# The User Policy Editor                       #"
echo "# -------------------------------------------- #"
echo "# Developers:                                  #"
echo "# - OlyB                                       #"
echo "# - Rafflesia                                  #"
echo "# - r58Playz                                   #"
echo "+##############################################+"
echo "May Ultrablue Rest in Peace, o7"

sleep 1

mkdir -p /etc/opt/chrome/policies/managed
echo '{
  "URLBlocklist": [],
  "SystemFeaturesDisableList": [],
  "ChromeOsMultiProfileUserBehavior": "unrestricted",
  "DeveloperToolsAvailability": 1,
  "AllowDeletingBrowserHistory": true,
  "IncognitoModeAvailability": 0,
  "ForceYouTubeRestrict": 0,
  "ForceGoogleSafeSearch": false,
  "SecondaryGoogleAccountSigninAllowed": true,
  "AllowDinosaurEasterEgg": true,
  "CACertificateManagementAllowed": 0,
  "ClientCertificateManagementAllowed": 0,
  "CrostiniAllowed": true,
  "CrostiniExportImportUIAllowed": true,
  "CrostiniPortForwardingAllowed": true,
  "ExternalStorageDisabled": false,
  "ExternalStorageReadOnly": false,
  "LacrosAvailability": "user_choice",
  "LacrosSecondaryProfilesAllowed": true,
  "AllowScreenLock": true,
  "PhoneHubAllowed": true,
  "SmsMessagesAllowed": true,
  "WifiSyncAndroidAllowed": true,
  "NetworkFileSharesAllowed": true,
  "TaskManagerEndProcessEnabled": true,
  "SystemTerminalSshAllowed": true,
  "VmManagementCliAllowed": true,
  "DownloadRestrictions": 0,
  "TrashEnabled": true,
  "DriveDisabled": false,
  "DriveDisabledOverCellular": false,
  "ArcEnabled": true,
  "URLAllowlist": null,
  "AllowedDomainsForApps": null,
  "AllowedLanguages": null,
  "BlockThirdPartyCookies": null,
  "DefaultCookiesSetting": 1,
  "CookiesBlockedForUrls": null,
  "CookiesAllowedForUrls": null,
  "ExtensionAllowedTypes": null,
  "ExtensionInstallAllowlist": null,
  "ExtensionInstallBlocklist": null,
  "ExtensionSettings": null,
  "PinnedLauncherApps": null,
  "BookmarkBarEnabled": null,
  "LidCloseAction": null,
  "ChromeOsLockOnIdleSuspend": null,
  "PowerManagementIdleSettings": null,
  "ShowFullUrlsInAddressBar": null,
  "HomepageIsNewTabPage": null,
  "HomepageLocation": null,
  "ShowHomeButton": null,
  "EnableSyncConsent": null,
  "PaymentMethodQueryEnabled": null,
  "SafeSitesFilterBehavior": null,
  "SafeBrowsingProtectionLevel": null,
  "ProxySettings": null,
  "DefaultClipboardSetting": null,
  "ClipboardAllowedForUrls": null,
  "ClipboardBlockedForUrls": null,
  "DefaultImagesSetting": null,
  "DefaultInsecureContentSetting": null,
  "DefaultJavaScriptSetting": null,
  "DefaultJavaScriptJitSetting": null,
  "DefaultNotificationsSetting": null,
  "DefaultPopupsSetting": null,
  "DefaultGeolocationSetting": 3,
  "RestoreOnStartup": null,
  "RestoreOnStartupURLs": null,
  "DefaultDownloadDirectory": null,
  "DownloadDirectory": null,
  "DownloadBubbleEnabled": null,
  "OsColorMode": "dark",
  "ArcPolicy": "{\"applications\":null,\"availableAppSetPolicy\":\"BLACKLIST\",\"playLocalPolicyEnabled\":true,\",\"playDeviceLocalPolicyDisabled\":true,\"playStoreMode\":\"BLACKLIST\",\"statusReportingSettings\":{\"applicationReportsEnabled\":false,\"profileSettingsEnabled\":true,\"softwareInfoEnabled\":true}}",
  "ReportArcStatusEnabled": false,
  "InstantTetheringAllowed": true,
  "SmartLockSigninAllowed": true,
  "NearbyShareAllowed": true,
  "UptimeLimit": null,
  "EasyUnlockAllowed": true,
  "EmojiSuggestionEnabled": null,
  "PasswordManagerEnabled": true,
  "ProxyMode": null,
  "IsolatedAppsDeveloperModeAllowed": true,
  "PinUnlockAutosubmitEnabled": true,
  "WebAppInstallForceList": null,
  "UserAvatarCustomizationSelectorsEnabled": true,
  "DnsOverHttpsMode": null,
  "EditBookmarksEnabled": true,
  "JavaScriptBlockedForUrls": []
}' > /etc/opt/chrome/policies/managed/pollen.json

echo ""
echo "Pollen (RootFS) has been successfully applied!"
