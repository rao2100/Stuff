#!/usr/bin/php
<?php
$xml = simplexml_load_file('http://musicforprogramming.net/rss.php');
$songs = array();
foreach($xml->channel->item as $item){
  $songs[] = (string)$item->comments;
}
$songs = array_reverse($songs);
foreach($songs as $song){
  `wget -c $song`;
}
