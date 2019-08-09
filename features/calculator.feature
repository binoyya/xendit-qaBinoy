Feature: Test online calculator scenarios
Scenario Outline: Test subtraction
Given Open chrome browser and start application
When I enter following values and do the subtraction
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|
Then I should be able to see
			|	expected |<expected>|
Examples:
  		| value1  		| value2 		| operator			| expected	|
      | 	40 			  |   2		  	|		-		      	| 38	  		|
			| 	40 			  |   200	  	|		-		      	| -160			|
			| 	-40 			|   200	  	|		-		      	| -240			|
			| 	-40 		  |  -200   	|		-		      	| 160		  	|
			| 	0.400 	  |   0.020	 	|		-		      	| 0.380  		|
			| 	0.400 	  |  -0.020	 	|		-		      	| 0.420  		|
			|  -0.400 	  |   0.020	 	|		-		      	|-0.420  		|
			|  -0.400 	  |  -0.020	 	|		-		      	|-0.380  		|
			| 	400 	    |   0.020	 	|		-		      	| 399.080		|
			| 	0    	    |   1   	 	|		-		      	| -1      	|
			| 	0    	    |   0   	 	|		-		      	| 0       	|


Scenario Outline: Test division and CE functionalities only
Given Open chrome browser and start application
When I enter following values and do the division
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|
Then I should be able to see
			|	expected |<expected>|
Examples:
	  	| value1  		| value2 		| operator			| expected	|
      | 	40 			  |   2		  	|		/  	      	| 20			  |
			| 	40 			  |   200	  	|		/  	      	| 0.2		    |
			| 	0.1			  |   20	  	|		/  	      	| 0.005	    |
			| 	0.1			  |   .002	  |		/  	        | 50   	    |
			| 	0.002		  |   0.1	  	|		/  	      	| 0.02	    |
      | 	20			  |   0.1	  	|		/  	      	| 200       |
      |	 -40 			  |   2		  	|		/  	      	| -20			  |
      |  -40 			  |  -2		  	|		/  	      	| 20			  |
      |  40 			  |  -2		  	|		/  	      	| -20			  |
      |  -40 			  |  -2		  	|		/  	      	| 20			  |
			|   0 			  |  1		  	|		/  	      	| 0			    |
			|   1 			  |  0		  	|		/  	      	| Error		  |


Scenario Outline: Test CE functionalities with maths equation added
Given Open chrome browser and start application
When I enter following values and do the division
			|value1 | <value1>|
			|value2 | <value2>|
			|operator | <operator>|
When I press CE button
			|	expected |<expected>|
Examples:
			| value1  		| value2 		| operator			| expected	|
	    | 	40 			  |   2		  	|		/  	      	| 0		    	|

Scenario Outline: Test CE functionalities only numbers
Given Open chrome browser and start application
When I enter following value to the calculator
			|value1 | <value1>|
When I press CE button
			|	expected |<expected>|
Examples:
			| value1  		| expected	|
			| 0.1    		  | 0		    	|
			|  1   	  	  | 0		    	|
			| -1   	  	  | 0		    	|
			| 999999999   | 0		    	|
