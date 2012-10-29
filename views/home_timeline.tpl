<h1> home_timeline </h1>

<hr />

%for s in sl:
<div>
	%if s.platform == "SinaWeiboStatus":
	<img src="http://weibo.com/favicon.ico" />
	%elif s.platform == "RenrenStatus":
	<img src="http://xnimg.cn/favicon.ico" />
	%elif s.platform == "RenrenShare":
	<img src="http://xnimg.cn/favicon.ico" />
	%elif s.platform == "TencentWeiboStatus":
	<img src="http://t.qq.com/favicon.ico" />
	%elif s.platform == "SQLite":
	<img src="http://www.sqlite.org/favicon.ico" />
	%elif s.platform == "Twitter":
	<img src="https://twitter.com/favicon.ico" />
	%elif s.platform == "RSS":
	<img src="http://www.girlmeetsdress.com/images/Favicon_RSS.jpg" />
	%elif s.platform == "RSS2RW":
	<img src="http://www.girlmeetsdress.com/images/Favicon_RSS.jpg" />
	%end

	<b>{{s.parsed.username}}</b> @ <i>{{snsapi_utils.utc2str(s.parsed.time)}}</i>
	<p>
	{{!s.parsed.text}}
	</p>
</div>
%end