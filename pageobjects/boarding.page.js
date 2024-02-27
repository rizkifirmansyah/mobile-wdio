// import { $ } from '@wdio/globals'
const { IOnboardingLocators } = require('../locators/boardingView.locators')


/**
 * sub page containing specific selectors and methods for a specific page
 */
class BoardingPage extends Page {
    /**
     * define selectors using getter methods
     */
    get boardingTitleText () { return $(IOnboardingLocators.boardTitleText); }
    get boardingDescText () { return $(IOnboardingLocators.boardDescText); }
    get LanjutkanBtn () { return $(IOnboardingLocators.lanjutkanButton); }
    get unlockExpText () { return $(IOnboardingLocators.unlockExperienceText); }
    get joinTravelokaBtn () { return $(IOnboardingLocators.joinTravelokaButton); }
    
    /**
     * a method to encapsule automation code to interact with the page
     * e.g. to login using username and password
     */
    async checkIsInBoardingPage() {
        await expect(this.boardingTitleText).toBeDisplayed();
        await expect(this.boardingDescText).toBeDisplayed();
        await expect(this.LanjutkanBtn).toBeDisplayed();
    }

    async clickLanjutkanButton() {
        await this.LanjutkanBtn.click();
    }

}

export default new BoardingPage();
