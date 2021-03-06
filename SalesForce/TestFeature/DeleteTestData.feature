﻿@Delete
Feature: 24 - Delete Test Data Created
	In order to avoid silly mistakes
	As a math idiot
	I want to be told the sum of two numbers

Background: User is logged in	
    Given user is in landing page
@RegressionTest
Scenario Outline: 01 Delete Case Data
	Given I am on the Mass Delete Cases Page
	When I filter the case data <column1Row1>, <operator1>, <value1>
	And I press Case Delete button
	Then all the related case records are deleted	
Examples: 
	| column1Row1 | operator1 | value1  |
	| First Name  | starts with | Test  |
	
Scenario Outline: 02 Delete Contact Data
	Given I am on the Mass Delete Contact Page
	When I filter the contact data <column1Row1>, <operator1>, <value1>
	And I press Contact Delete button
	Then all the related contact records are deleted	
Examples: 
	| column1Row1 | operator1 | value1   |
	| Last Name   | equals    | Customer |
	| Last Name   | equals    | Supplier |

Scenario Outline: 03 Delete Organisation Data
	Given I am on the Mass Delete Accounts Page
	When I filter the account data <column1Row1>, <operator1>, <value1>
	And I press Organisation Delete button
	Then all the related Organisation records are deleted	
Examples: 
	| column1Row1  | operator1   | value1   |
	| Account Name | starts with | Supplier |
	| Account Name | starts with | Customer |

Scenario Outline: 04 Delete Categories Data
	Given I am on Categories Page
	When I try to delete category <catName> from <allData>
	Then the record is deleted successfully	
Examples: 
	| allData          | catName                     |
	| Recently Created | Test Communications         |
	| Recently Created | Test Marketing              |
	| Recently Created | Test Marketing Services     |
	| Recently Created | Test Marketing Spl Services |

Scenario Outline: 05 Delete Triage Level Data
	Given I am on Triage Level Page
	When I try to delete <triageLevel> data
	Then the triage level is deleted successfully	
Examples: 
	| triageLevel   |
	| Test Level 01 |
	| Test Level 02 |
	| Test Level 03 |

