{$info.name}<br />
{$info.description}<br />

<script type="text/javascript" src="http://www.google.com/jsapi"></script>
{literal}
<script>
google.load("gdata", "1");
google.setOnLoadCallback(getMyFeed);
var myService;
var feedUrl = "https://www.google.com/calendar/feeds/liz@gmail.com/public/full";

function setupMyService() {
  myService = new google.gdata.calendar.CalendarService('exampleCo-exampleApp-1');
}

function getMyFeed() {
  setupMyService();
  google.gdata.client.init(handleInitError)
  myService.getEventsFeed(feedUrl, handleMyFeed, handleError);
  
}
function handleMyFeed(myResultsFeedRoot) {
  alert("This feed's title is: " + myResultsFeedRoot.feed.getTitle().getText());
}

function handleError(e) {
  alert("There was an error!");
  alert(e.cause ? e.cause.statusText : e.message);
}
</script>
{/literal}
<div id="exampleCo-exampleApp-1"></div>