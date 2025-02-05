package acme.testing.any.toolkit;

import org.junit.jupiter.api.Order;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvFileSource;

import acme.testing.TestHarness;

public class AnyToolkitListTest extends TestHarness{

	@ParameterizedTest
	@CsvFileSource(resources = "/any/toolkit/list.csv", encoding = "utf-8", numLinesToSkip = 1)
	@Order(10)
	public void positiveTest(final int recordIndex, final String code, final String title, 
		final String description, final String assemblyNotes, final String link, final String totalPrice,final String inventorName,final String inventorSurname,final String inventorEmail) { 
		super.clickOnMenu("Anonymous","List Toolkits");
		super.checkListingExists();
		super.sortListing(0, "asc");
		
		super.checkColumnHasValue(recordIndex, 0, code);
		super.checkColumnHasValue(recordIndex, 1, title);
		super.checkColumnHasValue(recordIndex, 2, description);
		
		super.clickOnListingRecord(recordIndex);
		super.checkFormExists();
		super.checkInputBoxHasValue("code", code);
		super.checkInputBoxHasValue("title", title);
		super.checkInputBoxHasValue("description", description);
		super.checkInputBoxHasValue("assemblyNotes", assemblyNotes);
		super.checkInputBoxHasValue("link", link);
		super.checkInputBoxHasValue("totalPrice", totalPrice);
        super.checkInputBoxHasValue("inventorName", inventorName);
        super.checkInputBoxHasValue("inventorSurname", inventorSurname);
        super.checkInputBoxHasValue("inventorEmail", inventorEmail);
		
		super.clickOnButton("See Tools");
		super.checkListingExists();
		super.clickOnButton("Return");
		super.clickOnButton("See Components");
		super.checkListingExists();
		

	}
	
}
