<?php


    //get the simplepie library
    require_once('php/simplepie.inc');
    
    //grab the feed
    $feed = new SimplePie();
    
    $feed->set_feed_url(array(
        'http://sandiego.craigslist.org/search/?areaID=8&subAreaID=&query=php developer&catAbbreviation=jjj&format=rss',
    	'http://feeds.feedburner.com/DailyBlogTips?format=xml'
    ));


    
    //enable caching
    //$feed->enable_cache(true);
    
    //provide the caching folder
    //$feed->set_cache_location('cache');
    
    //set the amount of seconds you want to cache the feed
    //$feed->set_cache_duration(1800);
    
    //init the process
    $feed->init();
    
    //let simplepie handle the content type (atom, RSS...)
    $feed->handle_content_type();

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	
	<title>FeedSmusher</title>
	
	
</head>

<body>

	<div id="page-wrap">

		<h1>Feed Smusher</h1>
				
        <?php if ($feed->error): ?>
		  <p><?php echo $feed->error; ?></p>
		<?php endif; ?>
  
		<?php foreach ($feed->get_items() as $item): ?>
 
    		<div class="chunk">
     
    			<h4 style="background:url(<?php $feed = $item->get_feed(); echo $feed->get_favicon(); ?>) no-repeat; text-indent: 25px; margin: 0 0 10px;"><a href="<?php echo $item->get_permalink(); ?>"><?php echo $item->get_title(); ?></a></h4>
      
    			<p class="footnote">Source: <a href="<?php $feed = $item->get_feed(); echo $feed->get_permalink(); ?>"><?php $feed = $item->get_feed(); echo $feed->get_title(); ?></a> | <?php echo $item->get_date('j M Y | g:i a T'); ?></p>
    			     
    		</div>
 
		<?php endforeach; ?>

	
	</div>

</body>

</html>