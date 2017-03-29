/*
 * aidl file :
 * frameworks/base/core/java/android/os/IExecutionZoneService.aidl
 * This file contains definitions of functions which are
 * exposed by service.
 * created by shah oct 5
 * recreated for thesis mar 28 2017
 */
package android.samshah;

import java.util.Map;

interface IExecutionZoneService {
        void createZone(String zoneName, String policyList);
        void setZone(String packageName, String zoneName);
        void editZone(String zoneName, String action, String paramList);
        void createPolicy(String policyName, String ruleList);
        void setPolicy(String policyName, String zoneName);
        void editPolicy(String policyName, String action, String paramList);
        void setAllowAll(boolean b);
        int checkZonePermission(String permission, int uid);
        String[] getAllZones();
        String[] getAllPolicies();
        String getRulesOfPolicy(String policname);
        String getZoneOfApp(String packagename);
        String[] getPoliciesOfZone(String zonename);
        String[] getAppsOfZoneByPackageName(String zonename);
        Map getPoliciesOfZoneWithRules(String zonename);
}
