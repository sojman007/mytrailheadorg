@isTest
private class AnimalLocatorTest{
    @isTest static void AnimalLocatorMock1() {
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        string result = AnimalLocator.getAnimalNameById(2);
        String expectedResult = 'scary bear';
        System.assertEquals(result,expectedResult );
    }
}