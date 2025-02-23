const { When, Then } = require("@cucumber/cucumber")
import { t } from "testcafe";
import world from "../../../../ui/util/gw/world"
import { NavigationScenario } from "../../../../ui/actions/gw/cc/NavigationScenario";
import { SearchScenario } from "../../../../ui/actions/gw/cc/SearchScenario";

const navigationScenario = new NavigationScenario()
const searchScenario = new SearchScenario()

When(/^the user searches for the policy in Search Claims/, async function () {
    await navigationScenario.navigateSearchPolicyScreen()
    await searchScenario.searchWithPolicy(world.dataMap.get('PolicyNumber'))
});

Then(/^the claim details are loaded successfully/, async function () {
    await searchScenario.validatePolicySearchResult()
});