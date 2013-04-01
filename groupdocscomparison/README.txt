Installation

1. "groupdocscomparison" module contain "design, modules, setting", so unzip it into "extentions" directory
2. Open file: "site/settings/override/site.ini.append.php" and add "ActiveExtensions[]=groupdocscomparison" under "[ExtensionSettings]"
3. Go to Admin > Setup > Extentions and checkbox where "groupdocscomparison" must be ticked

4. Then go to - Setup > Extentions and press "Regenerate autoloaded arrays for extentions" in the bottom
5. Grant permissions in admin go to - User Accounts > Roles and policies > Anonymous => Edit Role and if "groupdocscomparison" isn't available in the list press - New Policy > choose Module: groupdocscomparison > Grant access to all functions > Save