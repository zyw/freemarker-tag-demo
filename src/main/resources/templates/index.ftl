<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<>
<h1>ddddddddddddddddddddddd${name}---${email}</h1>

<@custom.test></@custom.test>
<#list contents as content>
    ${content.name} ---- ${content.eamil}<br/>
    <hr>
</#list>
<img src="res/images/logo.png">
<#assign bool="true"/>
${bool?boolean?c}
<hr/>
${"  green mouse"?cap_first}<br/>
${"GreEN mouse"?cap_first}<br/>
${"- green mouse"?cap_first}<br/>

<hr/>
${"  green  mouse"?capitalize}<br/>
${"GreEN mouse"?capitalize}<br/>

<hr/>
${"green mouse<br/>"?chop_linebreak}
${"2green mouse"?chop_linebreak}

<hr/>
<#if "piceous"?contains("ice")>It contains "ice"</#if>

<hr/>
<#-- The date_format, time_format and datetime_format settings must match this format! -->
<#assign someDate = "Oct 25, 1995"?date>
<#assign someTime = "3:05:30 PM"?time>
<#assign someDatetime = "Oct 25, 1995 03:05:00 PM"?datetime>

<#-- Changing the setting value changes the expected format: -->
<#setting datetime_format="iso">
<#assign someDatetime = "1995-10-25T15:05"?datetime>

<#-- Parsing XML Schema xs:date, xs:time and xs:dateTime values: -->
<#assign someDate = "1995-10-25"?date.xs>
<#assign someTime = "15:05:30"?time.xs>
<#assign someDatetime = "1995-10-25T15:05:00"?datetime.xs>

<#-- Parsing ISO 8601 (both extended and basic formats): -->
<#assign someDatetime = "1995-10-25T15:05"?datetime.iso>
<#assign someDatetime = "19951025T1505"?datetime.iso>

<#-- Parsing with SimpleDateFormat patterns: -->
<#assign someDate = "10/25/1995"?date("MM/dd/yyyy")>
<#assign someTime = "15:05:30"?time("HH:mm:ss")>
<#assign someDatetime = "1995-10-25 03:05 PM"?datetime("yyyy-MM-dd hh:mm")>

<hr/>
${"ahead"?ends_with("head")?c}<br/>
${"head"?ends_with("head")?c}

<hr/>
${"foo"?ensure_ends_with("/")}<br/>
${"foo/"?ensure_ends_with("/")}

<hr/>
${"foo"?ensure_starts_with("/")}<br/>
${"/foo"?ensure_starts_with("/")}

<hr/>
${"dddd"?ensure_starts_with("[a-zA-Z]+://", "http://")}<br/>
${"ftp://dddd"?ensure_starts_with("[a-zA-Z]+://", "http://")}<br/>
${"4444://dddd"?ensure_starts_with("[a-zA-Z]+://", "http://")}

<hr/>
${"abcabc"?index_of("bcd")}<br/>
${"abcabc"?index_of("bc")}

<hr/>
<#assign beanName = 'The "foo" bean.'>
String BEAN_NAME = "${beanName?j_string}";

<hr/>
<#assign user = "Big Joe's \"right hand\"">
alert("Welcome ${user?js_string}!");


<hr/>
${"abcdefgh"?keep_after("de")}<br/>
${"abcd3efgh"?keep_after("de")}<br/>

${"foo : bar"?keep_after(r"\s*:\s*", "r")}

<hr/>
${"abcdef"?keep_before("de")}

<hr/>
[${""?left_pad(5)}]<br/>
[${"a"?left_pad(5)}]<br/>
[${"ab"?left_pad(5)}]<br/>
[${"abc"?left_pad(5)}]<br/>
[${"abcd"?left_pad(5)}]<br/>
[${"abcde"?left_pad(5)}]<br/>
[${"abcdef"?left_pad(5)}]<br/>
[${"abcdefg"?left_pad(5)}]<br/>
[${"abcdefgh"?left_pad(5)}]

<hr/>
[${""?left_pad(5, "-")}]<br/>
[${"a"?left_pad(5, "-")}]<br/>
[${"ab"?left_pad(5, "-")}]<br/>
[${"abc"?left_pad(5, "-")}]<br/>
[${"abcd"?left_pad(5, "-")}]<br/>
[${"abcde"?left_pad(5, "-")}]

<hr/>
${"GrEeN MoUsE"?lower_case}

<hr/>
${"fooo"?matches('fo*')?c}<br/>
${"fooo bar"?matches('fo*')?c}

<hr/>
${"this is a car acarus"?replace("car", "bulldozer")}

<hr/>
${"abcdef"?remove_beginning("abc")}<br/>
${"foobar"?remove_beginning("abc")}

<hr/>
<#list "someMOOtestMOOtext"?split("MOO") as x>
- ${x}<br/>
</#list>

<hr/>
${"redirect"?starts_with("red")?c}<br/>
${"red"?starts_with("red")?c}

<hr/>
- ${'abc'?substring(0)}<br/>
- ${'abc'?substring(1)}<br/>
- ${'abc'?substring(2)}<br/>
- ${'abc'?substring(3)}<br/>

- ${'abc'?substring(0, 0)}<br/>
- ${'abc'?substring(0, 1)}<br/>
- ${'abc'?substring(0, 2)}<br/>
- ${'abc'?substring(0, 3)}<br/>

- ${'abc'?substring(0, 1)}<br/>
- ${'abc'?substring(1, 2)}<br/>
- ${'abc'?substring(2, 3)}

<hr/>
(${"  green mouse  "?trim})

<hr/>
${"Green Mouse"?uncap_first}

<hr/>
${"green mouse"?upper_case}

<hr/>
<#setting url_escaping_charset='UTF-8'>
<#assign x = 'http://www.v5cn.cn/a/b/c'>
${x?url}

<hr/>
${"http://www.v5cn.cn/a/b/c"?url_path("UTF-8")}

<hr/>
<#assign words = "   a bcd, .   1-2-3"?word_list>
<#list words as word>[${word}]</#list>

<hr/>
<#assign x=42>
${x}<br/>
${x?string}<br/>  <#-- the same as ${x} -->
${x?string.number}<br/>
${x?string.currency}<br/>
${x?string.percent}<br/>
${x?string.computer}

<hr/>
<#setting number_format="currency">
<#assign x=42>
${x}<br/>
${x?string}<br/> <#-- the same as ${x} -->
${x?string.number}<br/>
${x?string.currency}<br/>
${x?string.percent}

<hr/>
<#assign x = 1.234>
${x?string["0"]}<br/>
${x?string["0.#"]}<br/>
${x?string["0.##"]}<br/>
${x?string["0.###"]}<br/>
${x?string["0.####"]}<br/>

${1?string["000.00"]}<br/>
${12.1?string["000.00"]}<br/>
${123.456?string["000.00"]}<br/>

${1.2?string["0"]}<br/>
${1.8?string["0"]}<br/>
${1.5?string["0"]}<br/>
${2.5?string["0"]}<br/>

${12345?string["0.##E0"]}

<hr/>
<#list 1..30 as n>${n?lower_abc} </#list>

<hr/>
${12?is_infinite?c}<br/>

<hr/>
<#assign isnan = 1>
${isnan?is_nan?c}<br/>
${isnan?is_nan?c}

<hr/>
<#assign openingTime=.now/>
${openingTime?string.short}<br/>
${openingTime?string.medium}<br/>
${openingTime?string.long}<br/>
${openingTime?string.full}<br/>
${openingTime?string.xs}<br/>
${openingTime?string.iso}<br/>

<#assign lastUpdated=.now/>
${lastUpdated?string["dd.MM.yyyy, HH:mm"]}<br/>
${lastUpdated?string["EEEE, MMMM dd, yyyy, hh:mm a '('zzz')'"]}<br/>
${lastUpdated?string["EEE, MMM d, ''yy"]}<br/>
${lastUpdated?string.yyyy}<br/> <#-- Same as ${lastUpdated?string["yyyy"]} -->

<hr/>
<#assign seq = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j']>

<#list seq?chunk(4) as row>
    <#list row as cell>${cell} </#list>
    <br/>
</#list>
<br/>
<br/>
<#list seq?chunk(4, '-') as row>
    <#list row as cell>${cell} </#list>
    <br/>
</#list>

<hr/>
<#assign seq1 = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j']>

${seq1?first}

<hr/>
<#assign colors = ["red", "green", "blue"]>
${colors?join(", ")}

<hr/>
${colors?join(", ", "-")}<br/>
${[]?join(", ", "-")}<br/>

${colors?join(", ", "-", ".")}<br/>
${[]?join(", ", "-", ".")}<br/>

<hr/>
<#assign x = ["red", 16, "blue", "cyan"]><br/>
"blue": ${x?seq_contains("blue")?string("yes", "no")}<br/>
"yellow": ${x?seq_contains("yellow")?string("yes", "no")}<br/>
16: ${x?seq_contains(16)?string("yes", "no")}<br/>
"16": ${x?seq_contains("16")?string("yes", "no")}<br/>

<hr/>
<#assign ls = [
{"name":"whale", "weight":2000},
{"name":"Barbara", "weight":53},
{"name":"zeppelin", "weight":-200},
{"name":"aardvark", "weight":30},
{"name":"beetroot", "weight":0.3}
]>
Order by name:
<#list ls?sort_by("name") as i>
- ${i.name}: ${i.weight}<br/>
</#list>

Order by weight:
<#list ls?sort_by("weight") as i>
- ${i.name}: ${i.weight}<br/>
</#list>

<hr/>
<#assign h = {"name":"mouse", "price":50}>
<#assign keys = h?keys>
<#list keys as key>${key} = ${h[key]};<br/></#list>


<hr/>
<#assign x = "    moo  \n\n   ">
(<#compress>
1 2  3   4    5
${moo}
test only

I said, test only

</#compress>)

</body>
</html>