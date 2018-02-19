#!/usr/bin/env ruby

jour_1 = { "GOO"  => 15, "MMM"  => 14, "ADBE"  => 12, "EA"=> 13, "BA"  => 8, "KO"  => 10, "XOM"  => 20, "GPS"  => 7, "MCD"  => 11, "DIS"  => 15, "CRM"  => 6, "JNJ"  => 10 }
jour_2 = { "GOO"  => 8, "MMM"  => 20, "ADBE"  => 3, "EA"=> 10, "BA"  => 5, "KO"  => 19, "XOM"  => 12, "GPS"  => 6, "MCD"  => 15, "DIS"  => 9, "CRM"  => 10, "JNJ"  => 17 }
jour_3 = { "GOO"  => 3, "MMM"  => 8, "ADBE"  => 15, "EA"=> 5, "BA"  => 10, "KO"  => 5, "XOM"  => 15, "GPS"  => 13, "MCD"  => 10, "DIS"  => 18, "CRM"  => 5, "JNJ"  => 14 }
jour_4 = { "GOO"  => 17, "MMM"  => 3, "ADBE"  => 6, "EA"=> 9, "BA"  => 15, "KO"  => 6, "XOM"  => 8, "GPS"  => 1, "MCD"  => 10, "DIS"  => 15, "CRM"  => 18, "JNJ"  => 3 }
jour_5 = { "GOO"  => 8, "MMM"  => 18, "ADBE"  => 4, "EA"=> 6, "BA"  => 15, "KO"  => 18, "XOM"  => 3, "GPS"  => 12, "MCD"  => 19, "DIS"  => 3, "CRM"  => 7, "JNJ"  => 9 }
jour_6 = { "GOO"  => 10, "MMM"  => 12, "ADBE"  => 8, "EA"=> 3, "BA"  => 18, "KO"  => 20, "XOM"  => 5, "GPS"  => 11, "MCD"  => 3, "DIS"  => 9, "CRM"  => 8, "JNJ"  => 15 }
jour_7 = { "GOO"  => 17, "MMM"  => 14, "ADBE"  => 2, "EA"=> 17, "BA"  => 7, "KO"  => 13, "XOM"  => 1, "GPS"  => 15, "MCD"  => 15, "DIS"  => 10, "CRM"  => 9, "JNJ"  => 17 }


entreprises = ["GOO", "MMM", "ADBE", "EA","BA", "KO", "XOM", "GPS","MCD", "DIS", "CRM", "JNJ"]

for name in entreprises
	$price_low = jour_1["#{name}"]
	$Day_to_Buy = 1
	if jour_2["#{name}"] < $price_low
		$price_low = jour_2["#{name}"]
		$Day_to_Buy = 2
	end
	if jour_3["#{name}"] < $price_low
		$price_low = jour_3["#{name}"]
		$Day_to_Buy = 3
	end
	if jour_4["#{name}"] < $price_low
		$price_low = jour_4["#{name}"]
		$Day_to_Buy = 4
	end
	if jour_5["#{name}"] < $price_low
		$price_low = jour_5["#{name}"]
		$Day_to_Buy = 5
	end
	if jour_6["#{name}"] < $price_low
		$price_low = jour_6["#{name}"]
		$Day_to_Buy = 6
	end
	if jour_7["#{name}"] < $price_low
		$price_low = jour_7["#{name}"]
		$Day_to_Buy = 7
	end

	$price_high = jour_1["#{name}"]
	$Day_to_Sell = 1
	if jour_2["#{name}"] > $price_high  and $Day_to_Buy<=1
		$price_high = jour_2["#{name}"]
		$Day_to_Sell = 2
	end
	if jour_3["#{name}"] > $price_high and $Day_to_Buy<=2
		$price_high = jour_3["#{name}"]
		$Day_to_Sell = 3
	end
	if jour_4["#{name}"] > $price_high and $Day_to_Buy<=3
		$price_high = jour_4["#{name}"]
		$Day_to_Sell = 4
	end
	if jour_5["#{name}"] > $price_high and $Day_to_Buy<=4
		$price_high = jour_5["#{name}"]
		$Day_to_Sell = 5
	end
	if jour_6["#{name}"] > $price_high and $Day_to_Buy<=5
		$price_high = jour_6["#{name}"]
		$Day_to_Sell = 6
	end
	if jour_7["#{name}"] > $price_high and $Day_to_Buy<=6
		$price_high = jour_7["#{name}"]
		$Day_to_Sell = 7
	end

	$diff = $price_high - $price_low

	print "[#{$Day_to_Buy},#{$Day_to_Sell}] $#{$price_high} - $#{$price_low}  == $#{$diff}\n"
end