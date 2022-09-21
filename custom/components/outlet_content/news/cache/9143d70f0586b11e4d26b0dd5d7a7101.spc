a:4:{s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"feed";a:1:{i:0;a:6:{s:4:"data";s:66:"
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Dan Loewenherz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:3:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"href";s:14:"http://dlo.me/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:20:"application/atom+xml";s:4:"href";s:39:"http://feeds.feedburner.com/dloewenherz";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2011-05-06T23:55:20-07:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:14:"http://dlo.me/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:10:"
   
   
 ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:2:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:14:"Dan Loewenherz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"email";a:1:{i:0;a:5:{s:4:"data";s:9:"hi@dlo.me";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:5:"entry";a:12:{i:0;a:6:{s:4:"data";s:22:"
   
   
   
   
   
 ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:36:"What To Do When Your Site Goes Viral";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"href";s:94:"http://feedproxy.google.com/~r/dloewenherz/~3/8M2O7djKVYo/what-to-do-when-your-site-goes-viral";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2011-05-05T00:00:00-07:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:50:"http://dlo.me/what-to-do-when-your-site-goes-viral";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:35747:"<p>My <a href="/breakup-notifier">last post</a> told the story of how I made <a href="http://www.breakupnotifier.com/">Breakup Notifier</a> and how it exploded in popularity across the Internet. This post is a technical expose on <em>how</em> I kept it from going down.</p>
<p>I would be lying if I told you the application as I wrote it from day one had <em>any</em> semblance to what it looked like just a few days later. One thing you <strong>must</strong> accept is that unless you have a crystal ball, it will be nearly impossible to forecast the issues that will arise in your application. No matter what you do, there will be bugs that you didn&#8217;t anticipate, features that should have been obvious, and money that you could have saved. Be nimble and unafraid to rewrite your code. It will happen, so be prepared.</p>
<p>I hope that what I write here today can help you avoid the problems I faced if you ever happen to be in the same position.</p>
<p>Let the nerdery begin.</p>
<h2>The Foundations</h2>
<p>I automate as much of what I do as I possibly can. I do this to keep my development process very fast. It means that I can get a small prototype of an idea together in a small fraction of the time that it would take were I to build everything from scratch. Additionally I have a small store of idioms in my head to take things to an <span class="caps">MVP</span>-level very quickly.</p>
<p>Breakup Notifier was based on a <a href="https://github.com/dlo/django-on-appengine">project skeleton</a> I have for <a href="http://www.djangoproject.com/">Django</a> projects running on <a href="http://code.google.com/appengine/">Google App Engine</a>. Hosting the project on Google&#8217;s infrastructure was the best architectural choice I made. I can&#8217;t claim too much credit though; the fact is that I didn&#8217;t want to be bothered with systems administration that weekend. Auto-scaling was just a much-appreciated added bonus.</p>
<p>The lessons I write about below are applicable to every site that faces a deluge of traffic. Hopefully you won&#8217;t have to make the same mistakes I did =D.</p>
<h3><a href='javascript:window.open("http://twitter.com/intent/retweet?tweet_id=40229688362283008&related=dwlz", "Share this on Twitter!", "status=0,toolbar=0,location=0,height=320,width=550")'>Lesson 1: If you can do something on the frontend with the same performance as doing it on the backend, do it on the frontend.</a></h3>
<p>Frontend code scales linearly with the number of users you have. Backend code scales linearly with the number of servers you have. It doesn&#8217;t take a rocket scientist to figure out which is less <span class="caps">CPU</span>-intensive from the server perspective.</p>
<p>I pulled out an example to illustrate. The following is a snippet of code called after a user signs in from Facebook. It&#8217;s from the first working version of the application.</p>
<div class="highlight"><pre><code class="python"><span class="lineno"> 1</span> <span class="k">def</span> <span class="nf">facebook_oauth_complete</span><span class="p">(</span><span class="n">request</span><span class="p">):</span>
<span class="lineno"> 2</span>     <span class="k">if</span> <span class="s">&#39;access_token&#39;</span> <span class="ow">in</span> <span class="n">request</span><span class="o">.</span><span class="n">session</span><span class="p">:</span>
<span class="lineno"> 3</span>         <span class="k">return</span> <span class="n">HttpResponseRedirect</span><span class="p">(</span><span class="s">&quot;/&quot;</span><span class="p">)</span>
<span class="lineno"> 4</span> 
<span class="lineno"> 5</span>     <span class="n">code</span> <span class="o">=</span> <span class="n">request</span><span class="o">.</span><span class="n">GET</span><span class="p">[</span><span class="s">&#39;code&#39;</span><span class="p">]</span>
<span class="lineno"> 6</span>     <span class="n">params</span> <span class="o">=</span> <span class="p">{</span>
<span class="lineno"> 7</span>             <span class="s">&quot;client_id&quot;</span><span class="p">:</span> <span class="n">settings</span><span class="o">.</span><span class="n">FB_APP_ID</span><span class="p">,</span>
<span class="lineno"> 8</span>             <span class="s">&quot;client_secret&quot;</span><span class="p">:</span> <span class="n">settings</span><span class="o">.</span><span class="n">FB_APP_SECRET</span><span class="p">,</span>
<span class="lineno"> 9</span>             <span class="s">&quot;redirect_uri&quot;</span><span class="p">:</span> <span class="n">settings</span><span class="o">.</span><span class="n">FB_REDIRECT_URI</span><span class="p">,</span>
<span class="lineno">10</span>             <span class="s">&quot;code&quot;</span><span class="p">:</span> <span class="n">code</span> <span class="p">}</span>
<span class="lineno">11</span>     <span class="n">url</span> <span class="o">=</span> <span class="n">settings</span><span class="o">.</span><span class="n">FB_GRAPH_URI</span> <span class="o">+</span> <span class="s">&quot;/oauth/access_token?&quot;</span> <span class="o">+</span> <span class="n">urllib</span><span class="o">.</span><span class="n">urlencode</span><span class="p">(</span><span class="n">params</span><span class="p">)</span>
<span class="lineno">12</span> 
<span class="lineno">13</span>     <span class="c"># Fetch the access token</span>
<span class="lineno">14</span>     <span class="n">response</span> <span class="o">=</span> <span class="n">urlfetch</span><span class="o">.</span><span class="n">fetch</span><span class="p">(</span><span class="n">url</span><span class="p">)</span>
<span class="lineno">15</span>     <span class="n">data</span> <span class="o">=</span> <span class="n">response</span><span class="o">.</span><span class="n">content</span>
<span class="lineno">16</span>     <span class="n">attributes</span> <span class="o">=</span> <span class="n">cgi</span><span class="o">.</span><span class="n">parse_qs</span><span class="p">(</span><span class="n">data</span><span class="p">)</span>
<span class="lineno">17</span> 
<span class="lineno">18</span>     <span class="n">access_token</span> <span class="o">=</span> <span class="n">attributes</span><span class="p">[</span><span class="s">&#39;access_token&#39;</span><span class="p">][</span><span class="mi">0</span><span class="p">]</span>
<span class="lineno">19</span> 
<span class="lineno">20</span>     <span class="n">graph</span> <span class="o">=</span> <span class="n">facebook</span><span class="o">.</span><span class="n">GraphAPI</span><span class="p">(</span><span class="n">access_token</span><span class="p">)</span>
<span class="lineno">21</span>     <span class="n">profile</span> <span class="o">=</span> <span class="n">graph</span><span class="o">.</span><span class="n">get_object</span><span class="p">(</span><span class="s">&quot;me&quot;</span><span class="p">)</span>
<span class="lineno">22</span>     <span class="n">friends</span> <span class="o">=</span> <span class="n">graph</span><span class="o">.</span><span class="n">get_connections</span><span class="p">(</span><span class="s">&quot;me&quot;</span><span class="p">,</span> <span class="s">&quot;friends&quot;</span><span class="p">)</span>
<span class="lineno">23</span>     <span class="n">friend_ids</span> <span class="o">=</span> <span class="nb">map</span><span class="p">(</span><span class="k">lambda</span> <span class="n">k</span><span class="p">:</span> <span class="n">k</span><span class="p">[</span><span class="s">&#39;id&#39;</span><span class="p">],</span> <span class="n">friends</span><span class="p">[</span><span class="s">&#39;data&#39;</span><span class="p">])</span>
<span class="lineno">24</span> 
<span class="lineno">25</span>     <span class="o">...</span> <span class="n">code</span> <span class="o">...</span>
<span class="lineno">26</span> 
<span class="lineno">27</span>     <span class="k">for</span> <span class="n">friend_id</span> <span class="ow">in</span> <span class="n">friend_ids</span><span class="p">:</span>
<span class="lineno">28</span>         <span class="n">task</span> <span class="o">=</span> <span class="n">taskqueue</span><span class="o">.</span><span class="n">Task</span><span class="p">(</span><span class="n">url</span><span class="o">=</span><span class="s">&quot;/tasks/create-profile&quot;</span><span class="p">,</span>
<span class="lineno">29</span>                 <span class="n">method</span><span class="o">=</span><span class="s">&quot;POST&quot;</span><span class="p">,</span>
<span class="lineno">30</span>                 <span class="n">params</span><span class="o">=</span><span class="p">{</span>
<span class="lineno">31</span>                     <span class="s">&quot;id&quot;</span><span class="p">:</span> <span class="n">friend_id</span><span class="p">,</span>
<span class="lineno">32</span>                     <span class="s">&quot;access_token&quot;</span><span class="p">:</span> <span class="n">access_token</span><span class="p">,</span>
<span class="lineno">33</span>                     <span class="s">&quot;requested_by&quot;</span><span class="p">:</span> <span class="n">profile</span><span class="p">[</span><span class="s">&#39;id&#39;</span><span class="p">]})</span>
<span class="lineno">34</span>         <span class="n">task</span><span class="o">.</span><span class="n">add</span><span class="p">(</span><span class="s">&quot;create-profile&quot;</span><span class="p">)</span>
<span class="lineno">35</span> 
<span class="lineno">36</span>     <span class="o">...</span> <span class="n">code</span> <span class="o">...</span>
</code></pre>
</div>
<p>Deciding to pull in profile data in the backend unnecessarily (lines 27-34) was a very bad decision. <strong>For every user</strong> that authenticated with the application, I made on average about 150 calls to Facebook! I did this so that I could fill out the user&#8217;s friend list after they authenticated. Why I decided to do this on the backend, I have no idea, but it blew me past my task queue allotment more than once. Although this didn&#8217;t bring down the site, it did prevent relationship status notification emails from going out on schedule.</p>
<p>Not long after this error started popping up, it occurred to me that you can easily get this information through the Facebook Javascript <span class="caps">SDK</span>. Instead of making Facebook <span class="caps">API</span> calls from App Engine, <span class="caps">API</span> calls are now made straight from the browser. The result is a speedier experience for the user and lower server costs.</p>
<h3>Lesson 2: Simple is better. And faster. And easier to maintain.</h3>
<p>The first version of BN had a complicated queue system for checking whether a relationship status had changed.</p>
<p>Every set number of minutes, I was running a cronjob that would check for relationship status changes. It would go through every single user in the Breakup Notifier datastore (5 at a time), add a task to the task queue to check for their friends who they wanted updates for, go through each of their friends, and then call a method in the model that would call Facebook&#8217;s <span class="caps">API</span> and would send an email to all the people following that person saying their relationship status had changed.</p>
<p>The above approach was riddled with issues, very slow, and impossible to debug. The code was just a mess.</p>
<p>I spent about an hour figuring out how to optimize this process as much as possible. Compare the above to what it does now:</p>
<ol>
	<li>Fetch 1000 users at a time until all the users have been accessed.</li>
	<li>For each user, append a task to a list.</li>
	<li>When that list has 100 tasks, add them all to the task queue and make the list empty. Repeat 2 as necessary.</li>
	<li>For each task, loop through all of the friends they want updates for.</li>
	<li>If the current status is different than the stored status, send an email and update the friend in the database.</li>
</ol>
<p>This cut down costs by over 90%.</p>
<h3>Lesson 3: Minimize calls to your database, cache, or queue.</h3>
<p>This ties in a bit with the changes I made above with the relationship update scheme. If you see multiple calls to your database, use your cache first. When querying the datastore, use keys. If you see too many calls to your cache, group the calls together. If you&#8217;re using a queue, add tasks to your queue in clumps, not one at a time. Latency is a huge issue; don&#8217;t discount it. It will save you loads of issues in the future.</p>
<p>I&#8217;ll go over how you might make these optimizations with App Engine, however the general principles apply to all frameworks and languages. If you&#8217;re building for the web, you should do everything to minimize latency and disk access.</p>
<h4>Memcache</h4>
<div class="highlight"><pre><code class="python"><span class="c"># Bad</span>
<span class="n">cache</span><span class="o">.</span><span class="n">set</span><span class="p">(</span><span class="s">&quot;president:1&quot;</span><span class="p">,</span> <span class="s">&quot;nixon&quot;</span><span class="p">)</span>
<span class="n">cache</span><span class="o">.</span><span class="n">set</span><span class="p">(</span><span class="s">&quot;president:2&quot;</span><span class="p">,</span> <span class="s">&quot;obama&quot;</span><span class="p">)</span>
<span class="n">cache</span><span class="o">.</span><span class="n">set</span><span class="p">(</span><span class="s">&quot;president:3&quot;</span><span class="p">,</span> <span class="s">&quot;clinton&quot;</span><span class="p">)</span>

<span class="c"># Good</span>
<span class="c"># This is a lower latency action. Instead of calling memcache three times, you only call it once.</span>
<span class="n">cache</span><span class="o">.</span><span class="n">set_multi</span><span class="p">({</span><span class="s">&quot;president:1&quot;</span><span class="p">:</span> <span class="s">&quot;nixon&quot;</span><span class="p">,</span> <span class="s">&quot;president:2&quot;</span><span class="p">:</span> <span class="s">&quot;obama&quot;</span><span class="p">,</span> <span class="s">&quot;president:3&quot;</span><span class="p">:</span> <span class="s">&quot;clinton&quot;</span><span class="p">})</span>
</code></pre>
</div>
<h4>Datastore</h4>
<div class="highlight"><pre><code class="python"><span class="c"># Bad</span>
<span class="n">query</span> <span class="o">=</span> <span class="n">User</span><span class="o">.</span><span class="n">all</span><span class="p">()</span>
<span class="n">query</span><span class="o">.</span><span class="n">filter</span><span class="p">(</span><span class="s">&quot;email =&quot;</span><span class="p">,</span> <span class="s">&quot;user@example.com&quot;</span><span class="p">)</span>
<span class="n">user</span> <span class="o">=</span> <span class="n">query</span><span class="o">.</span><span class="n">get</span><span class="p">()</span>

<span class="c"># Good</span>
<span class="c"># Best to retrieve objects by what they are indexed by in the datastore.</span>
<span class="c"># I&#39;m saving the User object with the key_name as the email address.</span>
<span class="n">user</span> <span class="o">=</span> <span class="n">User</span><span class="o">.</span><span class="n">get_by_key_name</span><span class="p">(</span><span class="s">&quot;user@example.com&quot;</span><span class="p">)</span>

<span class="c"># Best</span>
<span class="c"># Use the cache before hitting the datastore. Reading from disk is slow,</span>
<span class="c"># reading from memory is fast.</span>
<span class="n">user</span> <span class="o">=</span> <span class="n">mc</span><span class="o">.</span><span class="n">get</span><span class="p">(</span><span class="s">&quot;user:user@example.com&quot;</span><span class="p">)</span>
<span class="k">if</span> <span class="ow">not</span> <span class="n">user</span><span class="p">:</span>
    <span class="n">user</span> <span class="o">=</span> <span class="n">User</span><span class="o">.</span><span class="n">get_by_key_name</span><span class="p">(</span><span class="s">&quot;user@example.com&quot;</span><span class="p">)</span>
    <span class="n">mc</span><span class="o">.</span><span class="n">set</span><span class="p">(</span><span class="s">&quot;user:user@example.com&quot;</span><span class="p">,</span> <span class="n">user</span><span class="p">)</span>
</code></pre>
</div>
<h4>Task Queue</h4>
<div class="highlight"><pre><code class="python"><span class="c"># Bad</span>
<span class="c"># The user object may change during the interval from when the task is added to</span>
<span class="c"># when it executes. Can cause data loss.</span>
<span class="n">task</span> <span class="o">=</span> <span class="n">taskqueue</span><span class="o">.</span><span class="n">Task</span><span class="p">(</span><span class="n">url</span><span class="o">=</span><span class="s">&quot;/tasks/my-task&quot;</span><span class="p">,</span> <span class="n">params</span><span class="o">=</span><span class="p">{</span><span class="s">&quot;user&quot;</span><span class="p">:</span> <span class="n">user1</span><span class="p">})</span>
<span class="n">task</span><span class="o">.</span><span class="n">add</span><span class="p">(</span><span class="s">&quot;my-queue&quot;</span><span class="p">)</span>

<span class="n">task</span> <span class="o">=</span> <span class="n">taskqueue</span><span class="o">.</span><span class="n">Task</span><span class="p">(</span><span class="n">url</span><span class="o">=</span><span class="s">&quot;/tasks/my-task&quot;</span><span class="p">,</span> <span class="n">params</span><span class="o">=</span><span class="p">{</span><span class="s">&quot;user&quot;</span><span class="p">:</span> <span class="n">user2</span><span class="p">})</span>
<span class="n">task</span><span class="o">.</span><span class="n">add</span><span class="p">(</span><span class="s">&quot;my-queue&quot;</span><span class="p">)</span>

<span class="c"># Good</span>
<span class="c"># Retrieve the user object in the task, so as to not save stale data.</span>
<span class="n">task</span> <span class="o">=</span> <span class="n">taskqueue</span><span class="o">.</span><span class="n">Task</span><span class="p">(</span><span class="n">url</span><span class="o">=</span><span class="s">&quot;/tasks/my-task&quot;</span><span class="p">,</span> <span class="n">params</span><span class="o">=</span><span class="p">{</span><span class="s">&quot;user_key&quot;</span><span class="p">:</span> <span class="s">&quot;user1@example.com&quot;</span><span class="p">})</span>
<span class="n">task</span><span class="o">.</span><span class="n">add</span><span class="p">(</span><span class="s">&quot;my-queue&quot;</span><span class="p">)</span>

<span class="n">task</span> <span class="o">=</span> <span class="n">taskqueue</span><span class="o">.</span><span class="n">Task</span><span class="p">(</span><span class="n">url</span><span class="o">=</span><span class="s">&quot;/tasks/my-task&quot;</span><span class="p">,</span> <span class="n">params</span><span class="o">=</span><span class="p">{</span><span class="s">&quot;user_key&quot;</span><span class="p">:</span> <span class="s">&quot;user2@example.com&quot;</span><span class="p">})</span>
<span class="n">task</span><span class="o">.</span><span class="n">add</span><span class="p">(</span><span class="s">&quot;my-queue&quot;</span><span class="p">)</span>

<span class="c"># Best</span>
<span class="c"># Only make one call to the task queue instead of two. App Engine will allow</span>
<span class="c"># you to add 100 tasks at a time. Use that to your advantage.</span>
<span class="n">tasks</span> <span class="o">=</span> <span class="p">[]</span>
<span class="n">task</span> <span class="o">=</span> <span class="n">taskqueue</span><span class="o">.</span><span class="n">Task</span><span class="p">(</span><span class="n">url</span><span class="o">=</span><span class="s">&quot;/tasks/my-task&quot;</span><span class="p">,</span> <span class="n">params</span><span class="o">=</span><span class="p">{</span><span class="s">&quot;user_key&quot;</span><span class="p">:</span> <span class="s">&quot;user1@example.com&quot;</span><span class="p">})</span>
<span class="n">tasks</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">task</span><span class="p">)</span>

<span class="n">task</span> <span class="o">=</span> <span class="n">taskqueue</span><span class="o">.</span><span class="n">Task</span><span class="p">(</span><span class="n">url</span><span class="o">=</span><span class="s">&quot;/tasks/my-task&quot;</span><span class="p">,</span> <span class="n">params</span><span class="o">=</span><span class="p">{</span><span class="s">&quot;user_key&quot;</span><span class="p">:</span> <span class="s">&quot;user2@example.com&quot;</span><span class="p">})</span>
<span class="n">tasks</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">task</span><span class="p">)</span>

<span class="n">queue</span> <span class="o">=</span> <span class="n">taskqueue</span><span class="o">.</span><span class="n">Queue</span><span class="p">(</span><span class="s">&quot;my-queue&quot;</span><span class="p">)</span>

<span class="c"># Add the tasks.</span>
<span class="n">queue</span><span class="o">.</span><span class="n">add</span><span class="p">(</span><span class="n">tasks</span><span class="p">)</span>
</code></pre>
</div>
<h3>Lesson 4: Log absolutely everything.</h3>
<p>You cannot possibly know what edge cases will emerge in your application and cause you problems down the line. I don&#8217;t care how smart you think you are or how much test coverage you have. Your site will have issues, and you will not be prepared for them.</p>
<p>The best advice I can give you is to log profusely. Let me show you an example.</p>
<div class="highlight"><pre><code class="python"><span class="lineno"> 1</span> <span class="k">def</span> <span class="nf">user_update</span><span class="p">(</span><span class="n">request</span><span class="p">):</span>
<span class="lineno"> 2</span>     <span class="nb">id</span> <span class="o">=</span> <span class="n">request</span><span class="o">.</span><span class="n">POST</span><span class="p">[</span><span class="s">&#39;id&#39;</span><span class="p">]</span>
<span class="lineno"> 3</span>     <span class="n">logging</span><span class="o">.</span><span class="n">info</span><span class="p">(</span><span class="s">&quot;id=</span><span class="si">%s</span><span class="s">&quot;</span> <span class="o">%</span> <span class="nb">id</span><span class="p">)</span>
<span class="lineno"> 4</span> 
<span class="lineno"> 5</span>     <span class="n">cache</span> <span class="o">=</span> <span class="n">memcache</span><span class="o">.</span><span class="n">Client</span><span class="p">()</span>
<span class="lineno"> 6</span>     <span class="n">logging</span><span class="o">.</span><span class="n">debug</span><span class="p">(</span><span class="s">&quot;memcache client instantiated&quot;</span><span class="p">)</span>
<span class="lineno"> 7</span> 
<span class="lineno"> 8</span>     <span class="n">user_key</span> <span class="o">=</span> <span class="s">&quot;fb:</span><span class="si">%s</span><span class="s">&quot;</span> <span class="o">%</span> <span class="nb">id</span>
<span class="lineno"> 9</span>     <span class="n">user</span> <span class="o">=</span> <span class="n">cache</span><span class="o">.</span><span class="n">get</span><span class="p">(</span><span class="n">user_key</span><span class="p">)</span>
<span class="lineno">10</span>     <span class="n">logging</span><span class="o">.</span><span class="n">debug</span><span class="p">(</span><span class="s">&quot;check if user in cache&quot;</span><span class="p">)</span>
<span class="lineno">11</span>     <span class="k">if</span> <span class="ow">not</span> <span class="n">user</span><span class="p">:</span>
<span class="lineno">12</span>         <span class="n">logging</span><span class="o">.</span><span class="n">info</span><span class="p">(</span><span class="s">&quot;user not in cache&quot;</span><span class="p">)</span>
<span class="lineno">13</span>         <span class="n">user</span> <span class="o">=</span> <span class="n">FacebookUserV2</span><span class="o">.</span><span class="n">get_by_key_name</span><span class="p">(</span><span class="nb">id</span><span class="p">)</span>
<span class="lineno">14</span>         <span class="n">logging</span><span class="o">.</span><span class="n">debug</span><span class="p">(</span><span class="s">&quot;user retrieved from database&quot;</span><span class="p">)</span>
<span class="lineno">15</span>     <span class="k">else</span><span class="p">:</span>
<span class="lineno">16</span>         <span class="n">logging</span><span class="o">.</span><span class="n">info</span><span class="p">(</span><span class="s">&quot;user retrieved from cache&quot;</span><span class="p">)</span>
<span class="lineno">17</span> 
<span class="lineno">18</span>     <span class="k">try</span><span class="p">:</span>
<span class="lineno">19</span>         <span class="n">graph</span> <span class="o">=</span> <span class="n">facebook</span><span class="o">.</span><span class="n">GraphAPI</span><span class="p">(</span><span class="n">user</span><span class="o">.</span><span class="n">access_token</span><span class="p">)</span>
<span class="lineno">20</span>         <span class="n">logging</span><span class="o">.</span><span class="n">debug</span><span class="p">(</span><span class="s">&quot;graph api instantiated&quot;</span><span class="p">)</span>
<span class="lineno">21</span>         <span class="n">profile</span> <span class="o">=</span> <span class="n">graph</span><span class="o">.</span><span class="n">get_object</span><span class="p">(</span><span class="s">&quot;me&quot;</span><span class="p">)</span>
<span class="lineno">22</span>         <span class="n">logging</span><span class="o">.</span><span class="n">debug</span><span class="p">(</span><span class="s">&quot;get profile data&quot;</span><span class="p">)</span>
<span class="lineno">23</span>     <span class="k">except</span> <span class="n">facebook</span><span class="o">.</span><span class="n">GraphAPIError</span><span class="p">:</span>
<span class="lineno">24</span>         <span class="c"># Reset the access token of the user</span>
<span class="lineno">25</span>         <span class="n">user</span><span class="o">.</span><span class="n">access_token</span> <span class="o">=</span> <span class="bp">None</span>
<span class="lineno">26</span>         <span class="n">logging</span><span class="o">.</span><span class="n">warning</span><span class="p">(</span><span class="s">&quot;access token invalid&quot;</span><span class="p">)</span>
<span class="lineno">27</span>         <span class="n">user</span><span class="o">.</span><span class="n">put</span><span class="p">()</span>
<span class="lineno">28</span>         <span class="n">logging</span><span class="o">.</span><span class="n">debug</span><span class="p">(</span><span class="s">&quot;save user&quot;</span><span class="p">)</span>
<span class="lineno">29</span>         <span class="k">return</span> <span class="n">JsonResponse</span><span class="p">({</span><span class="s">&quot;status&quot;</span><span class="p">:</span> <span class="s">&quot;failure&quot;</span><span class="p">})</span>
<span class="lineno">30</span> 
<span class="lineno">31</span>     <span class="n">locale</span> <span class="o">=</span> <span class="n">profile</span><span class="o">.</span><span class="n">get</span><span class="p">(</span><span class="s">&#39;locale&#39;</span><span class="p">,</span> <span class="bp">None</span><span class="p">)</span>
<span class="lineno">32</span>     <span class="k">if</span> <span class="ow">not</span> <span class="n">locale</span><span class="p">:</span>
<span class="lineno">33</span>         <span class="n">logging</span><span class="o">.</span><span class="n">warning</span><span class="p">(</span><span class="s">&quot;locale not provided&quot;</span><span class="p">)</span>
<span class="lineno">34</span>     <span class="k">else</span><span class="p">:</span>
<span class="lineno">35</span>         <span class="n">logging</span><span class="o">.</span><span class="n">info</span><span class="p">(</span><span class="s">&quot;locale=</span><span class="si">%s</span><span class="s">&quot;</span> <span class="o">%</span> <span class="n">locale</span><span class="p">)</span>
<span class="lineno">36</span>     <span class="n">user</span><span class="o">.</span><span class="n">locale</span> <span class="o">=</span> <span class="n">locale</span>
<span class="lineno">37</span>     <span class="n">user</span><span class="o">.</span><span class="n">put</span><span class="p">()</span>
<span class="lineno">38</span>     <span class="n">logging</span><span class="o">.</span><span class="n">debug</span><span class="p">(</span><span class="s">&quot;save user&quot;</span><span class="p">)</span>
<span class="lineno">39</span>     <span class="n">cache</span><span class="o">.</span><span class="n">set</span><span class="p">(</span><span class="n">user_key</span><span class="p">,</span> <span class="n">user</span><span class="p">)</span>
<span class="lineno">40</span> 
<span class="lineno">41</span>     <span class="n">logging</span><span class="o">.</span><span class="n">debug</span><span class="p">(</span><span class="s">&quot;save user to cache&quot;</span><span class="p">)</span>
<span class="lineno">42</span>     <span class="k">return</span> <span class="n">JsonResponse</span><span class="p">({</span><span class="s">&quot;status&quot;</span><span class="p">:</span> <span class="s">&quot;success&quot;</span><span class="p">})</span>
</code></pre>
</div>
<p>If you read through the code above, you can get a pretty good sense of what I mean by &#8220;log everything&#8221;. The benefit of it is that you can quickly diagnose issues. In App Engine, the logging facility is directed to the &#8220;Logs&#8221; page in your application dashboard. If you use vanilla Django on your own server, I recommend using <a href="http://readthedocs.org/docs/sentry/en/latest/index.html">Sentry</a> to zero in on your application errors. I&#8217;m not too familiar with what you might use for other frameworks or languages.</p>
<p>If your app is throwing around 500s, it&#8217;s helpful to see what the last line logged was before it died. You can easily zone in on the broken code and diagnose the issue much more easily than it would be otherwise.</p>
<h4>Lesson 4.1: Monitor Your Application.</h4>
<p>Sometimes it&#8217;s just too hard to guess where your bottlenecks are. I highly recommend you use whatever monitoring tool you can get your hands on.</p>
<p>Here are a few tools that I would recommend. Just keep in mind that the open source options will take longer to configure and in a high traffic situation might not be the best option to start off with.</p>
<h5>Performance Monitoring</h5>
<table class="pretty">
	<tr>
		<th>Name</th>
		<th>What You Can Monitor</th>
		<th>Notes</th>
	</tr>
	<tr>
		<td>AppStats</td>
		<td><a href="http://code.google.com/appengine/docs/python/tools/appstats.html">Python</a>, <a href="http://code.google.com/appengine/docs/java/tools/appstats.html">Java</a></td>
		<td>App Engine Only</td>
	</tr>
	<tr>
		<td><a href="http://newrelic.com/">New Relic</a></td>
		<td><a href="http://newrelic.com/rails-app-performance.html">Ruby</a>, <a href="http://newrelic.com/java-app-performance.html">Java</a>, <a href="http://newrelic.com/dotnet-app-performance.html">.<span class="caps">NET</span></a>, <a href="http://newrelic.com/php-app-performance.html"><span class="caps">PHP</span></a></td>
		<td></td>
	</tr>
	<tr>
		<td><a href="https://scoutapp.com/">Scout</a></td>
		<td><a href="https://www.scoutapp.com/plugin_urls/181-ruby-on-rails-monitoring">Rails</a>, <a href="https://www.scoutapp.com/plugin_urls/22-mysql-statistics">MySQL</a>, <a href="https://www.scoutapp.com/plugin_urls/241-sphinx-monitoring">Sphinx</a>, <a href="https://www.scoutapp.com/plugin_urls/391-mongodb-monitoring">MongoDB</a>, <a href="https://www.scoutapp.com/plugin_urls/271-redis-monitoring">Redis</a>, <a href="https://www.scoutapp.com/plugin_urls/201-apache-log-analyzer">Apache</a></td>
		<td>Very extensible, open <span class="caps">API</span>.</td>
	</tr>
	<tr>
		<td><a href="http://www.unionstationapp.com/">Union Station</a></td>
		<td> Ruby</td>
		<td> Free during open beta.</td>
	</tr>
</table>
<h5>Server Monitoring</h5>
<table class="pretty small">
	<tr>
		<th>Name</th>
		<th>Notes</th>
	</tr>
	<tr>
		<td><a href="http://www.nagios.org/documentation">Nagios</a></td>
		<td>Open source.</td>
	</tr>
	<tr>
		<td><a href="http://mmonit.com/monit/">Monit</a></td>
		<td>Open source.</td>
	</tr>
	<tr>
		<td><a href="https://www.cloudkick.com/">CloudKick</a></td>
		<td>Free for one server</td>
	</tr>
</table>
<h3>Lesson 5: Don&#8217;t check your email.</h3>
<p>This isn&#8217;t as &#8220;technical&#8221; as the above points, but I think it is extremely important and relevant to what you&#8217;ll be experiencing when your site is experiencing lots of traffic.</p>
<p>Yes, I know it&#8217;s awesome that your site is going viral. All your friends know about it, the media is talking about you, and a random person in Idaho farmland heard about your website on the radio (true story).</p>
<p>For the first day after the Breakup Notifier craziness started, I was focused way too much on what was going on around me, instead of focusing on making Breakup Notifier better. There were too many people talking about it to even keep track of. My advice is to spend a moment to reflect on the effect you&#8217;ve had, and then get back to work. Your work does not get easier because the world is watching you!</p>
<p>The key is getting shit done in the face of massive distraction.</p>
<p>If your experience is anything like mine, you will get business proposals, friend requests, direct messages, and everything else in between. These all present fantastic potential opportunities, but my advice is to deal with them later or recruit a friend to manage the business-related issues. Otherwise you will explode and will get nothing done.</p>
<p>At the time, all of those things may seem really time-sensitive. What&#8217;s more important though are your users, and the comments that people are giving you <em>right now</em>. Build them the best product you can while eyes are on you. It will make a difference.</p>
<p>Thanks for reading. Be sure to <a href="http://feeds.feedburner.com/dloewenherz">subscribe</a> if you liked this post and <a href='javascript:window.open("http://twitter.com/intent/user?screen_name=dwlz", "Follow me on Twitter!", "status=0,toolbar=0,location=0,height=320,width=550")'>follow me on Twitter</a> for the latest updates.</p>
<p>Have a comment? Join the <a href="http://news.ycombinator.com/item?id=2519641">discussion</a>.</p>
<p><a href="http://feedads.g.doubleclick.net/~a/fK5LRR1EViVoPOQTrkFoMzRcL90/0/da"><img src="http://feedads.g.doubleclick.net/~a/fK5LRR1EViVoPOQTrkFoMzRcL90/0/di" border="0" ismap="true"></img></a><br/>
<a href="http://feedads.g.doubleclick.net/~a/fK5LRR1EViVoPOQTrkFoMzRcL90/1/da"><img src="http://feedads.g.doubleclick.net/~a/fK5LRR1EViVoPOQTrkFoMzRcL90/1/di" border="0" ismap="true"></img></a></p><img src="http://feeds.feedburner.com/~r/dloewenherz/~4/8M2O7djKVYo" height="1" width="1"/>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:50:"http://dlo.me/what-to-do-when-your-site-goes-viral";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:22:"
   
   
   
   
   
 ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Breakup Notifier";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"href";s:74:"http://feedproxy.google.com/~r/dloewenherz/~3/Mr-QSLquspI/breakup-notifier";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2011-03-20T00:00:00-07:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:30:"http://dlo.me/breakup-notifier";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:20034:"<h2>Introduction</h2>
<p>This is the story of Breakup Notifier: when I made it, what the inspiration was, how I handled it, and anything else that might be relevant. I&#8217;m writing this not only because a lot of people asked me to, but also for myself. The past month has been a little out of this world, and there&#8217;s a ton of stuff that&#8217;s been sitting in my head just waiting to be jotted down on paper (or in this case, Vim). On another note, I still can&#8217;t get over that Breakup Notifier was on <a href="http://goo.gl/zcCLY">Jay Leno</a> a few nights ago (skip to 8:42 on the monologue). Insane.</p>
<p>So I&#8217;m going to go into as much detail as I possibly can. If I left out something that you&#8217;d like to see, shoot me an email at <a href="mailto:dan@dlo.me">dan@dlo.me</a> and I&#8217;ll update the post.</p>
<h2>Thursday</h2>
<h4>Unique Visitors: 0</h4>
<p>It was a pretty normal night. My fiancée, her mom and I spent a few hours earlier that evening watching the season finale of <a href="http://www.starz.com/originals/spartacus">Spartacus</a>. After the show ended, I got back to work. A few minutes after getting back on the computer (which is also in our TV room&#8212;<a href="http://www.amazon.com/gp/product/B002M38I2U/ref=as_li_ss_tl?ie=UTF8&amp;tag=dansaweblo-20&amp;linkCode=as2&amp;camp=1789&amp;creative=390957&amp;creativeASIN=B002M38I2U">noise canceling headphones</a> <span class="caps">FTW</span>!), I started listening in on a conversation they were both having regarding my soon-to-be sister-in-law.</p>
<p>So there was this great guy who they thought was a great match for her. They were talking him up to each other, convincing themselves he was probably the perfect guy. Their hopes were dashed after checking his relationship status on Facebook (yep, he was &#8220;In a relationship&#8221;).</p>
<p>This was a problem just itching for a solution. Since programmers are kind of like real life superheroes, I decided to do my part. I proposed a system where they would get an email the instant said guy changed his relationship status. They absolutely loved it.</p>
<h2>Friday</h2>
<h4>Unique Visitors: 0</h4>
<p>Here&#8217;s the first chat I had where I talked about the idea.</p>
<table>
	<tr>
		<th>12:07 PM</th>
		<td><strong>me:</strong> i&#8217;m going to take an hour break</td>
	</tr>
	<tr>
		<td></td>
		<td>i want to make a joke website</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>Christopher:</strong> haha</td>
	</tr>
	<tr>
		<td></td>
		<td>nice</td>
	</tr>
	<tr>
		<th>12:08 PM</th>
		<td>what&#8217;s the idea</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>me:</strong> <a href="http://www.breakupnotifier.com">breakupnotifier.com</a></td>
	</tr>
	<tr>
		<th>12:09 PM</th>
		<td>login through facebook and mark hot girls you&#8217;re interested in who<br />
are in a relationship</td>
	</tr>
	<tr>
		<td></td>
		<td>it will email you when they break up</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>Christopher:</strong> thats brilliant</td>
	</tr>
	<tr>
		<td></td>
		<td>im waiting out like 5 relationships</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>me:</strong> haha</td>
	</tr>
	<tr>
		<th>12:09 PM</th>
		<td>i&#8217;m giving myself a time limit of one hour</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>Christopher:</strong> you got it</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>me:</strong> will let you know when its done</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>Christopher:</strong> sweet</td>
	</tr>
</table>
<p>Somewhere in the middle of this conversation I purchased the domain breakupnotifier.com (if you&#8217;re wondering why the confirmation email says 1:08pm, it&#8217;s because GoDaddy is located in Arizona). And no, I didn&#8217;t follow through with my initial time estimate :P.</p>
<figure>
<p><img src="/images/godaddy-bn.png" alt="" /></p>
</figure>
<p>I had enough feedback to actually build something. The git repo was started at 12:40pm with the intent to actually work on this thing the next day.</p>
<p>In the meantime, I thought it would be fun to get some more feedback from some other friends. I thought the idea was hilarious so I naturally wanted to tell as many people as possible.</p>
<table>
	<tr>
		<th>1:14 PM</th>
		<td><strong>me:</strong> <a href="http://www.breakupnotifier.com/">http://breakupnotifier.com/</a></td>
	</tr>
	<tr>
		<td></td>
		<td>lol</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>Richard:</strong> dude i think it can go even further than that &#8211; check out what im<br />
about to send you</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>me:</strong> haha</td>
	</tr>
	<tr>
		<th>1:15 PM</th>
		<td>quick which icon set do you like better</td>
	</tr>
	<tr>
		<td></td>
		<td><a href="http://www.istockphoto.com/stock-illustration-10194726-valentine-s-day-icon-set.php">http://www.istockphoto.com/stock-illustration-10194726-valentine-s-day-icon-set.php</a></td>
	</tr>
	<tr>
		<td></td>
		<td><a href="http://www.istockphoto.com/stock-illustration-14678717-heart-icons.php">http://www.istockphoto.com/stock-illustration-14678717-heart-icons.php</a></td>
	</tr>
	<tr>
		<td></td>
		<td><strong>Richard:</strong><br />
<a href="http://www.istockphoto.com/stock-illustration-10194726-valentine-s-day-icon-set.php">http://www.istockphoto.com/stock-illustration-10194726-valentine-s-day-icon-set.php</a><br />
gives you more choice</td>
	</tr>
	<tr>
		<th>1:16 PM</th>
		<td>right?</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>me:</strong> yeah agreed</td>
	</tr>
	<tr>
		<td></td>
		<td>i&#8217;m going with it</td>
	</tr>
</table>
<p>I purchased $18.50 worth of credits on iStockphoto and downloaded the Valentine&#8217;s Day icon set. After it was downloaded, I spent about 30 minutes inside of Fireworks turning this</p>
<p><img src="/images/original-bn-icon.png" alt="" /></p>
<p>into</p>
<p><img src="/images/bn-icon.png" alt="" /></p>
<p>I went with the Facebook color scheme primarily because I figured it&#8217;s what people are accustomed to and comfortable with.</p>
<p>I think I spent the next few hours working on some other things. At 3 I started tinkering with the Facebook Graph <span class="caps">API</span>. Here&#8217;s a chat from around then.</p>
<table>
	<tr>
		<th>3:30 PM</th>
		<td>are you up to anything?</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>me:</strong> making a silly web app</td>
	</tr>
	<tr>
		<td></td>
		<td><a href="http://breakupnotifier.com">breakupnotifier.com</a></td>
	</tr>
	<tr>
		<td></td>
		<td>my break for the day</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>James:</strong> hahaha</td>
	</tr>
	<tr>
		<td></td>
		<td>what is it?</td>
	</tr>
	<tr>
		<th>3:31 PM</th>
		<td><strong>me:</strong> rachel (my fiancée) was talking with her mom last night about<br />
her sister, and how they wanted to set her up with this guy</td>
	</tr>
	<tr>
		<td></td>
		<td>they checked on facebook and he was in a relationship</td>
	</tr>
	<tr>
		<td></td>
		<td>so i was like, would you guys want to be notified when his relationship status<br />
changes?</td>
	</tr>
	<tr>
		<td></td>
		<td>they were like <span class="caps">YESSS</span></td>
	</tr>
	<tr>
		<td></td>
		<td>and an idea was born</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>James:</strong> hahaha</td>
	</tr>
	<tr>
		<th>3:32 PM</th>
		<td>so whenever your friends</td>
	</tr>
	<tr>
		<td></td>
		<td>relationship status changes</td>
	</tr>
	<tr>
		<td></td>
		<td>you get notified</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>me:</strong> well you can pick and choose</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>James:</strong> haha thats funny</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>me:</strong> so you can pick only the hot girls</td>
	</tr>
	<tr>
		<td></td>
		<td>or something</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>James:</strong> i like it</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>me:</strong> hah</td>
	</tr>
	<tr>
		<td></td>
		<td>cool</td>
	</tr>
	<tr>
		<td></td>
		<td>it&#8217;ll be on hn in a few hours</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>James:</strong> did you start building yet?</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>me:</strong> i hope</td>
	</tr>
	<tr>
		<td></td>
		<td>yes</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>James:</strong> the fbook api is pretty easy right</td>
	</tr>
	<tr>
		<td></td>
		<td>did you use a library</td>
	</tr>
	<tr>
		<th>3:33 PM</th>
		<td><strong>me:</strong> yeah, it&#8217;s super simple</td>
	</tr>
	<tr>
		<td></td>
		<td>although it&#8217;s being annoying right now</td>
	</tr>
	<tr>
		<td></td>
		<td>with the permissions crap</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>James:</strong> oh</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>me:</strong> i&#8217;m asking for certain permissions but the api isn&#8217;t giving me the info<br />
i asked for</td>
	</tr>
	<tr>
		<td></td>
		<td>pretty weird</td>
	</tr>
	<tr>
		<th>3:34 PM</th>
		<td><strong>James:</strong> thats annoying</td>
	</tr>
	<tr>
		<th>3:35 PM</th>
		<td><strong>me:</strong> i wonder if its because of my draconian privacy settings</td>
	</tr>
	<tr>
		<td></td>
		<td>&#8230;</td>
	</tr>
	<tr>
		<th>3:39 PM</th>
		<td>eff this</td>
	</tr>
	<tr>
		<td></td>
		<td>i give up</td>
	</tr>
</table>
<p>Yep, believe it or not, Breakup Notifier almost never happened. I worked on <a href="http://letscrate.com">Crate</a> for the rest of the day.</p>
<h2>Saturday</h2>
<h4>Unique Visitors: 0</h4>
<p>I decided to finish what I started. I knew there was something here and I was not going to give in so easily. I figured out what my issue was with the Facebook <span class="caps">API</span> pretty quickly (I was asking for the wrong permissions).</p>
<p>I finished the web application sometime around mid-afternoon Saturday, <a href="https://twitter.com/dwlz/status/39225184854622209">tweeted about it</a> (here&#8217;s <a href="https://twitter.com/BreakupNotifier/status/39207349247934464">the one</a> from the <a href="http://twitter.com/breakupnotifier">@BreakupNotifier</a> account), and then submitted the post to <a href="http://forrst.com/posts/Breakup_Notifier-guq">Forrst</a>. I knew this site had some major potential, so I was seriously pushing it to my friends and followers.</p>
<p>Despite all this, no one really cared.</p>
<figure>
<p><img src="/images/bn-traffic-saturday.png" alt="" /></p>
</figure>
<h2>Sunday</h2>
<h4>Unique Visitors: 15</h4>
<p>The next day, I wanted to give Breakup Notifier one last chance.</p>
<p>I submitted Breakup Notifier to HN at about 4:00pm (<a href="http://news.ycombinator.com/item?id=2243650">Show HN: Breakup Notifier</a>). I distinctly recall that it almost fell off the new page and sat at around 2-3 upvotes for about an hour. I think by the time an hour passed, I&#8217;d given up on it and started watching Batman Begins with my fiancee. I checked on my computer halfway through the movie, and somehow it made it to the front page!</p>
<figure>
<table>
	<tr>
		<th>6:35 PM</th>
		<td><strong>Carter:</strong> kudos on the hn post</td>
	</tr>
	<tr>
		<th>6:40 PM</th>
		<td><strong>me:</strong> haha wow</td>
	</tr>
	<tr>
		<td></td>
		<td>it&#8217;s gotten on the front page?</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>Carter:</strong> yeah</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>me:</strong> oh wow</td>
	</tr>
</table>
</figure>
<hr/>
<figure>
<table>
	<tr>
		<th>7:07 PM</th>
		<td><strong>James:</strong> dude!</td>
	</tr>
	<tr>
		<td></td>
		<td>breakup notifier</td>
	</tr>
	<tr>
		<td></td>
		<td>is 3rd on hn</td>
	</tr>
	<tr>
		<td></td>
		<td>thats awesome</td>
	</tr>
</table>
</figure>
<p>On Sunday night at around 7:30pm <span class="caps">PST</span>,  had reached the #1 spot; by 9:19pm, the site had over 12,000 unique visitors.</p>
<p>At 11:12 PM that night, the impossible happened.</p>
<figure>
<p><img src="/images/bn-email-tc.png" alt="" /></p>
</figure>
<p>Holy. Shit.</p>
<p>I knew what the problem was. Alexia wasn&#8217;t getting emails since I was only checking for relationship status changes once every 24 hours. As a test, Alexia broke up with herself, saw no email, and was very sad.</p>
<p>I promise, this was the closest I&#8217;ve probably ever gotten to having a psychological breakdown. I definitively remember my hands shaking as I wrote the code to increase the polling frequency. My adrenaline levels must have been through the roof. I knew the site had viral potential&#8212;I just couldn&#8217;t really believe it was actually happening.</p>
<figure>
<p><img src="/images/bn-traffic-sunday.png" alt="" /></p>
</figure>
<h2>Monday</h2>
<h4>Unique Visitors: 18,805</h4>
<p>I pushed the new code and waited. And waited. Next morning, at around 11am, it happened&#8230;Breakup Notifier was <a href="http://techcrunch.com/2011/02/21/stalkbook/">crunched</a>. On another note, this is the point where I was also given introduced to all the wonderful TechCrunch commenters.</p>
<p>I was blown away by the malice of some of these people. It&#8217;s really kind of depressing, but that&#8217;s the subject of another post. Moving on&#8230;</p>
<figure>
<table>
	<tr>
		<th>10:06 AM</th>
		<td><strong>Matthew:</strong> <a href="http://www.cnn.com/2011/TECH/social.media/02/21/facebook.relationship.status/index.html?iref=NS1">http://www.cnn.com/2011/<span class="caps">TECH</span>/social.media/02/21/facebook.relationship.status/index.html?iref=NS1</a></td>
	</tr>
	<tr>
		<td></td>
		<td>nice</td>
	</tr>
	<tr>
		<td></td>
		<td><strong>me:</strong> holy shit</td>
	</tr>
	<tr>
		<td></td>
		<td>hahahaha</td>
	</tr>
	<tr>
		<td></td>
		<td><span class="caps">CNN</span>!</td>
	</tr>
</table>
</figure>
<p>Shit got real right about now. Within a few hours, I was contacted by ABCNews.com, <span class="caps">MSNBC</span>, GlobeAndMail, Technorati, PC Magazine, The New York Daily News, Information Week, the Huffington Post, The Washington Post, The NY Times Magazine, the International Business Times, and the list goes on.</p>
<p>Here&#8217;s the traffic graph for Monday.</p>
<figure>
<p><img src="/images/bn-traffic-monday.png" alt="" /></p>
</figure>
<h2>Tuesday</h2>
<h4>Unique Visitors: 116,669</h4>
<p>It may seem crazy, but by Tuesday I was in a state of immense denial. I truly could not believe what was going on. Every morning for the next few days, I felt like I was waking up to a dream. It was all too surreal and odd for me to really explain. It was kind of like a ton of eyes were on me and what I was going to do. Hell, a bunch of people thought Facebook would ban me (lulz).</p>
<p>I teased fate a little bit when I commented that I would feel <a href="http://news.ycombinator.com/item?id=2243708">honored</a> if Facebook were to ban Breakup Notifier. Heh.</p>
<h2>Wednesday</h2>
<h4>Unique Visitors: 164,309</h4>
<p>I woke up to this email in my inbox (sent at 4:38AM).</p>
<figure>
<p><img src="/images/bn-disabled-facebook.png" alt="" /></p>
</figure>
<p>I suppose I was overstepping my bounds ;). I would later learn that the reason the application was disabled was because of a little &#8220;Share&#8221; button. When a Facebook application uses the feed dialog to publish a story through an application, it&#8217;s actually a wrapper over the Facebook <span class="caps">API</span>. So when a user hides or blocks content from one of these posts, it can actually penalize the application that allowed the user to share.</p>
<p>Apparently, a lot of people were hiding these shares from friends, so the application was banned automatically. I didn&#8217;t have as large a problem with the reason it was banned as much as the amount of time it took for Facebook to communicate this to me.</p>
<p>I immediately sent an email to Alexia at TechCrunch letting her know what was going on. I figured this would be an interesting story and I was lucky enough that she decided to write <a href="http://techcrunch.com/2011/02/23/breakup-notifier/">about it</a>.</p>
<p>I don&#8217;t like sitting around like a lame duck, so I did what any self respecting hacker would do. I decided to channel the traffic to Breakup Notifier to another website while all this Facebook stuff was being sorted out. I would call it <a href="http://www.crushnotifier.com">Crush Notifier</a>.</p>
<p>Amidst all the press craziness that was happening about now (and a packed inbox), I pumped out the site.</p>
<h2>Friday</h2>
<h4>Unique Visitors: 197,999</h4>
<p>Breakup Notifier traffic was really dying down by now, especially since the site hadn&#8217;t been able to do anything for about two days, per Facebook&#8217;s ban of the application.</p>
<p>With Crush Notifier, I planned to integrate Facebook Credits, write a revamped backend (to handle a lot more users), and basically make everything faster. It took a few hours, and by evening, I was ready to launch the site. I wrote a <a href="http://blog.crushnotifier.com">blog post</a>, submitted it to <a href="http://news.ycombinator.com/item?id=2264660">HN</a>, and braced myself.</p>
<p>TechCrunch soon posted <a href="http://techcrunch.com/2011/02/25/crushnotifier/">about it</a>. Nothing really prepared me for the sort of vitriol that I would soon be the target of. In the TechCrunch post, I was called things that I&#8217;d rather not repeat on this blog. There&#8217;s no need to repeat them here.</p>
<p>I went to bed feeling extremely depressed that night. Rachel told me not to worry&#8212;this is just how some people are, and there&#8217;s not really much one can do about it. It still just stuck with me. There isn&#8217;t really anything much worse than random people accusing you of being a cheat, liar, and fraud.</p>
<h2>Saturday</h2>
<h4>Unique Visitors: 203,171</h4>
<p>I could never have predicted what would happen next.</p>
<p>A fellow HNer, <a href="http://news.ycombinator.com/user?id=jarin">jarin</a>, wrote <a href="http://news.ycombinator.com/item?id=2265161">a post</a> entitled <em>Crush Notifier backlash: if Dan Lowenherz is a crook so is your favorite company</em>. He spelled my last name wrong, but it really didn&#8217;t matter. I know this might sound bizarre, but I never felt more at home in any community of people. Everyone chimed in about how this happens to everyone; it&#8217;s just how the world works.</p>
<p>Main thing I learned from this experience is that you just have to ignore everyone who tries to put you down. It <strong>will</strong> happen. As Chad Etzel <a href="http://news.ycombinator.com/item?id=2265200">remarked</a>: &#8220;Haters gonna hate.&#8221; Nothing you can do about it.</p>
<h2>Conclusion</h2>
<h4>Unique Visitors: 237,851 and counting</h4>
<p>You&#8217;re probably wondering how much money I made with all this attention. Short answer: nothing. Long answer: had I chosen to put ads on the site as it was exploding in popularity, I believe I would have probably made a few hundred dollars.</p>
<p>As for Facebook&#8217;s ban of the application, it was revoked on Sunday. On Monday morning, I relaunched the application (it goes without saying that I removed the &#8216;Share button&#8217;).</p>
<p>I also would like to add that I am so incredibly thankful for the HN community and the positive energy that it promotes. There is nothing quite like it. I love all of you.</p>
<p>My next post is going to be a bit more technical in nature. I&#8217;m going to write what the scaling/coding aspect of this entire experience was like, so if you&#8217;re at all interested in that, be sure to <a href="http://feeds.feedburner.com/dloewenherz">subscribe</a>!</p>
<p>Have a comment? Join the <a href="http://news.ycombinator.com/item?id=2348702">discussion</a>.</p>
<p><a href="http://feedads.g.doubleclick.net/~a/T7sgh75mHjd___G0YB3Y3yl4tNU/0/da"><img src="http://feedads.g.doubleclick.net/~a/T7sgh75mHjd___G0YB3Y3yl4tNU/0/di" border="0" ismap="true"></img></a><br/>
<a href="http://feedads.g.doubleclick.net/~a/T7sgh75mHjd___G0YB3Y3yl4tNU/1/da"><img src="http://feedads.g.doubleclick.net/~a/T7sgh75mHjd___G0YB3Y3yl4tNU/1/di" border="0" ismap="true"></img></a></p><img src="http://feeds.feedburner.com/~r/dloewenherz/~4/Mr-QSLquspI" height="1" width="1"/>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:30:"http://dlo.me/breakup-notifier";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:22:"
   
   
   
   
   
 ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:32:"How I Deal With Content Overload";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"href";s:90:"http://feedproxy.google.com/~r/dloewenherz/~3/3JsrCXxqRvM/how-i-deal-with-content-overload";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2011-02-05T00:00:00-08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:46:"http://dlo.me/how-i-deal-with-content-overload";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:2701:"<p>Over the past couple of years I&#8217;ve been slowly honing a way to manage the deluge of online content that presents itself to me. The problem nowadays isn&#8217;t that there isn&#8217;t enough interesting content. It&#8217;s that there is <strong>way</strong> too much to handle.</p>
<p>Follow these steps, and your free time will open up measurably:</p>
<ol>
	<li>Get an account at <a href="http://pinboard.in">Pinboard.in</a> and <a href="http://instapaper.com">Instapaper</a>. I love Pinboard because the service is easy to use, the developer is on top of his shit, and it works like a charm. It&#8217;s worth the $10 it costs today. I actually have an archival account, which costs $25 / year, so if I bookmark something and the site goes down, I will still have a saved copy.</li>
	<li>Set up two bookmarklets: the Instapaper &#8220;Read Later&#8221; one and the Pinboard &#8220;popup&#8221;.</li>
	<li>Add your Instapaper feed <span class="caps">URL</span> to Pinboard. This will sync your Instapaper and Pinboard accounts. Also make sure that new bookmarks are set as &#8220;unread&#8221;.</li>
	<li>Take 5 minutes once each day to browse through <a href="http://reddit.com">Reddit</a>, <a href="http://news.ycombinator.com">HN</a>, <a href="http://stumbleupon.com">Stumbleupon</a>, or whatever it is you use to find content. Click on &#8220;Read Later&#8221; for blog posts you find interesting and use the Pinboard popup for items of interest, such as tutorials, documentation, or websites you might want to check out. Tag them appropriately.</li>
	<li>Put aside an hour at the end of the day to read up on the Instapaper items you marked and your unread bookmarks on Pinboard on your iPad<sup class="footnote"><a href="#fn1">1</a></sup>, Kindle, computer, etc.</li>
</ol>
<p>Can&#8217;t say what this will do for you, but I&#8217;ve easily gained a couple more hours of productivity each day from this. It&#8217;s easier to stay focused on the task at hand when you schedule your procrastination.</p>
<p class="footnote" id="fn1"><sup>1</sup> I&#8217;m considering writing an Pinboard.in iPad application. I couldn&#8217;t find one that I&#8217;d use. Does anyone else have a need for this?</p>
<p><a href="http://feedads.g.doubleclick.net/~a/6l7-RrRZApEFGJTLT70h1EERPbY/0/da"><img src="http://feedads.g.doubleclick.net/~a/6l7-RrRZApEFGJTLT70h1EERPbY/0/di" border="0" ismap="true"></img></a><br/>
<a href="http://feedads.g.doubleclick.net/~a/6l7-RrRZApEFGJTLT70h1EERPbY/1/da"><img src="http://feedads.g.doubleclick.net/~a/6l7-RrRZApEFGJTLT70h1EERPbY/1/di" border="0" ismap="true"></img></a></p><img src="http://feeds.feedburner.com/~r/dloewenherz/~4/3JsrCXxqRvM" height="1" width="1"/>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:46:"http://dlo.me/how-i-deal-with-content-overload";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:22:"
   
   
   
   
   
 ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:6:"Crazy.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"href";s:63:"http://feedproxy.google.com/~r/dloewenherz/~3/YIbZ24nqfRo/crazy";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2011-01-20T00:00:00-08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:19:"http://dlo.me/crazy";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:1594:"<p>I&#8217;m a <strong>huge</strong> fan of the <a rel="nofollow" href='http://en.wikipedia.org/wiki/Pareto_principle'>Pareto Principle</a>. Almost everybody, from <a rel="nofollow" href='http://www.gladwell.com/'>Malcolm Gladwell</a> to <a rel="nofollow" href='http://www.fourhourworkweek.com/'>Timothy Ferriss</a>, share my obsession with it. The idea is that a small amount of the inputs are the cause for most of the outputs.</p>
<p>The most productive periods of your life are those where you act crazy. Being unpredictable is a necessary ingredient for serendipity, and it&#8217;s always those serendipitous moments where the biggest changes in your life will happen. You&#8217;ve gotta shake things up. <strong>AS <span class="caps">MUCH</span> AS <span class="caps">YOU</span> <span class="caps">CAN</span></strong>.</p>
<p>If most change comes from being unpredictable, why not embrace it? Make it who you are.</p>
<p>Start doing things you don&#8217;t normally do. Talk to people you don&#8217;t normally talk to. Get out of your comfort zone.</p>
<p>You&#8217;ll be happier because of it.</p>
<p><a href="http://feedads.g.doubleclick.net/~a/heO4G0TFJOtAel_buEdtMyIefc4/0/da"><img src="http://feedads.g.doubleclick.net/~a/heO4G0TFJOtAel_buEdtMyIefc4/0/di" border="0" ismap="true"></img></a><br/>
<a href="http://feedads.g.doubleclick.net/~a/heO4G0TFJOtAel_buEdtMyIefc4/1/da"><img src="http://feedads.g.doubleclick.net/~a/heO4G0TFJOtAel_buEdtMyIefc4/1/di" border="0" ismap="true"></img></a></p><img src="http://feeds.feedburner.com/~r/dloewenherz/~4/YIbZ24nqfRo" height="1" width="1"/>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:19:"http://dlo.me/crazy";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:22:"
   
   
   
   
   
 ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:37:"When to Buy Airline Tickets Continued";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"href";s:77:"http://feedproxy.google.com/~r/dloewenherz/~3/QcjCB2AfxLs/flying-on-the-cheap";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2010-08-01T00:00:00-07:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:33:"http://dlo.me/flying-on-the-cheap";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:11180:"<p>First, a brief re-introduction. <a href="/when-to-buy-airline-tickets">A few months back</a>, I thought it would be a cool experiment to use crowdsourcing to optimize my choices in buying airplane tickets.</p>
<p>Unfortunately, though, I didn&#8217;t really finish what I started. This post is going to fix that.</p>
<p>To spice things up a little bit, I added over 3000 data points to this analysis over the last one, so things are not only going to look cooler, but they&#8217;re going to be more accurate as well. Before I delve into the actual statistics of all the information I gathered, I&#8217;m going to give a little overview of how I actually made this all happen, or you can <a href="#results">skip straight to the results</a>.</p>
<h2>A Crash Course in Mechanical Turk</h2>
<p>Amazon has a nice and easy interface for adding batches of jobs like these. You can specify a description, some keywords (this makes it easier for &#8220;Turkers&#8221; to find your job), and various other variables, such as the time alotted per assignment and the amount of time before a <span class="caps">HIT</span> (Human Intelligence Task) expires.</p>
<p><img src="/images/mturk-1.png" alt="" /></p>
<p>Once you do this, you basically have to figure out a few more things.</p>
<ul>
	<li>A data set.</li>
	<li>A way for Turkers to enter in the data they find (using the form interface on the MTurk website).</li>
</ul>
<p>This is a short snippet of code that generated the random data for the trips.</p>
<div class="highlight"><pre><code class="python"><span class="n">SECONDS_IN_YEAR</span> <span class="o">=</span> <span class="mi">28425600</span>
<span class="n">CITIES</span> <span class="o">=</span> <span class="p">[</span><span class="s">&quot;MIA&quot;</span><span class="p">,</span> <span class="s">&quot;LAX&quot;</span><span class="p">,</span> <span class="s">&quot;JFK / LGA&quot;</span><span class="p">,</span> <span class="s">&quot;SFO&quot;</span><span class="p">]</span>

<span class="k">def</span> <span class="nf">write_random_trips</span><span class="p">(</span><span class="n">n</span><span class="p">):</span>
    <span class="k">for</span> <span class="n">i</span> <span class="ow">in</span> <span class="nb">xrange</span><span class="p">(</span><span class="n">n</span><span class="p">):</span>
        <span class="n">row</span> <span class="o">=</span> <span class="n">random</span><span class="o">.</span><span class="n">sample</span><span class="p">(</span><span class="n">CITIES</span><span class="p">,</span> <span class="mi">2</span><span class="p">)</span>
        <span class="n">r</span> <span class="o">=</span> <span class="n">random</span><span class="o">.</span><span class="n">randint</span><span class="p">(</span><span class="mi">0</span><span class="p">,</span> <span class="n">SECONDS_IN_YEAR</span><span class="p">)</span>
        <span class="n">d</span> <span class="o">=</span> <span class="n">datetime</span><span class="o">.</span><span class="n">fromtimestamp</span><span class="p">(</span><span class="n">time</span><span class="o">.</span><span class="n">time</span><span class="p">()</span> <span class="o">+</span> <span class="n">r</span><span class="p">)</span>
        <span class="n">row</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">d</span><span class="o">.</span><span class="n">strftime</span><span class="p">(</span><span class="s">&quot;%B </span><span class="si">%d</span><span class="s"> %Y&quot;</span><span class="p">))</span>
    <span class="k">print</span> <span class="s">&quot;</span><span class="si">%s</span><span class="s">,</span><span class="si">%s</span><span class="s">,</span><span class="si">%s</span><span class="s">&quot;</span> <span class="o">%</span> <span class="p">(</span><span class="n">row</span><span class="p">[</span><span class="mi">0</span><span class="p">],</span> <span class="n">row</span><span class="p">[</span><span class="mi">1</span><span class="p">],</span> <span class="n">row</span><span class="p">[</span><span class="mi">2</span><span class="p">])</span>
</code></pre>
</div>
<p>I uploaded it as a <span class="caps">CSV</span>, and Amazon automatically divvied up the prompts to the Mechanical Turk users.</p>
<h2>The Waiting Game</h2>
<p>This is, by far, the most gut-renching part of the Mechanical Turk experience. After submitting your batch of HITs to Amazon, it can take anywhere from 8 to 12 hours for them all to get finished. As people complete the tasks, you have the ability to accept or reject the submissions (when you reject a submission, you should give a reason to the Turker who completed it). This is a little tedious, but it&#8217;s pretty important if you want to weed out bad data.</p>
<p>Once the batch is complete, you have the option to export the results to a <span class="caps">CSV</span>. From there, you can do whatever you&#8217;d like with the data. I packaged it up nicely so that Mathematica could make some sense of it.</p>
<h2 id="results">Results</h2>
<p>The first thing I wanted to see once I had everything in hand was pretty obvious (at least to me): What is the cheapest time of year to fly?</p>
<p>The following is a chart plotting day-of-year versus average price for that day.</p>
<p><img src="/images/flights_jagged.png" alt="" /></p>
<p>The above isn&#8217;t so useful. It&#8217;s pretty hard to extrapolate a trend from really jagged data like this. I decided that a 30-day moving average would be a lot smoother and easier to interpret. Below is the result. The average ticket price was $160.97 and the data stayed within a small range of the average (the standard deviation was $13.00).</p>
<p><img src="/images/flights_ma_30_day.png" alt="" /></p>
<p>Another thing I wanted answered was the best <strong>time</strong> of day to order airplane tickets. Unfortunately, I didn&#8217;t get many data points for periods in the middle of the night, so the data is a little skewed. The graph below charts time against ticket price, with the size of the circle representing the number of data points for that time period.</p>
<p><img src="/images/flights_prices_point_count.png" alt="" /></p>
<p>Here&#8217;s a table of average prices for each day of the week. Thursday is the most expensive day to fly, and Saturday is the cheapest.</p>
<table>
	<tr>
		<th>Day </th>
		<th>Average Price</th>
	</tr>
	<tr>
		<td>Monday</td>
		<td>$159.40</td>
	</tr>
	<tr>
		<td>Tuesday</td>
		<td>$159.36</td>
	</tr>
	<tr>
		<td>Wednesday</td>
		<td>$161.91</td>
	</tr>
	<tr>
		<td>Thursday</td>
		<td style="font-weight:bold;color:red;">$174.45</td>
	</tr>
	<tr>
		<td>Friday</td>
		<td>$163.28</td>
	</tr>
	<tr>
		<td>Saturday</td>
		<td style="font-weight:bold;color:green;">$148.03</td>
	</tr>
	<tr>
		<td>Sunday</td>
		<td>$166.98</td>
	</tr>
</table>
<p>And here I have it split up by city.</p>
<h3>Miami</h3>
<table>
	<tr>
		<th>Day </th>
		<th>From</th>
		<th>To</th>
	</tr>
	<tr>
		<td>Monday</td>
		<td>$167.12</td>
		<td>$164.45</td>
	</tr>
	<tr>
		<td>Tuesday</td>
		<td>$169.38</td>
		<td>$169.66</td>
	</tr>
	<tr>
		<td>Wednesday</td>
		<td>$172.03</td>
		<td>$166.51</td>
	</tr>
	<tr>
		<td>Thursday</td>
		<td style="font-weight:bold;color:red;">$191.08</td>
		<td>$195.11</td>
	</tr>
	<tr>
		<td>Friday</td>
		<td>$172.70</td>
		<td>$169.38</td>
	</tr>
	<tr>
		<td>Saturday</td>
		<td style="font-weight:bold;color:green;">$158.23</td>
		<td style="font-weight:bold;color:green;">$162.29</td>
	</tr>
	<tr>
		<td>Sunday</td>
		<td>$169.63</td>
		<td style="font-weight:bold;color:red;">$199.33</td>
	</tr>
</table>
<h3>LA</h3>
<table>
	<tr>
		<th>Day </th>
		<th>From</th>
		<th>To</th>
	</tr>
	<tr>
		<td>Monday</td>
		<td>$156.99</td>
		<td>$149.67</td>
	</tr>
	<tr>
		<td>Tuesday</td>
		<td>$151.45</td>
		<td>$148.48</td>
	</tr>
	<tr>
		<td>Wednesday</td>
		<td>$155.18</td>
		<td>$156.65</td>
	</tr>
	<tr>
		<td>Thursday</td>
		<td>$161.57</td>
		<td>$160.00</td>
	</tr>
	<tr>
		<td>Friday</td>
		<td>$158.27</td>
		<td>$155.47</td>
	</tr>
	<tr>
		<td>Saturday</td>
		<td style="font-weight:bold;color:green;">$139.68</td>
		<td style="font-weight:bold;color:green;">$136.49</td>
	</tr>
	<tr>
		<td>Sunday</td>
		<td style="font-weight:bold;color:red;">$162.16</td>
		<td style="font-weight:bold;color:red;">$161.00</td>
	</tr>
</table>
<h3><span class="caps">NYC</span></h3>
<table>
	<tr>
		<th>Day </th>
		<th>From</th>
		<th>To</th>
	</tr>
	<tr>
		<td>Monday</td>
		<td>$161.94</td>
		<td>$161.81</td>
	</tr>
	<tr>
		<td>Tuesday</td>
		<td>$161.35</td>
		<td>$163.19</td>
	</tr>
	<tr>
		<td>Wednesday</td>
		<td>$161.08</td>
		<td>$160.20</td>
	</tr>
	<tr>
		<td>Thursday</td>
		<td>$170.15</td>
		<td style="font-weight:bold;color:red;">$170.40</td>
	</tr>
	<tr>
		<td>Friday</td>
		<td>$169.09</td>
		<td>$166.63</td>
	</tr>
	<tr>
		<td>Saturday</td>
		<td style="font-weight:bold;color:green;">$144.02</td>
		<td style="font-weight:bold;color:green;">$149.75</td>
	</tr>
	<tr>
		<td>Sunday</td>
		<td style="font-weight:bold;color:red;">$172.48</td>
		<td>$152.12</td>
	</tr>
</table>
<h3><span class="caps">SFO</span></h3>
<table>
	<tr>
		<th>Day </th>
		<th>From</th>
		<th>To</th>
	</tr>
	<tr>
		<td>Monday</td>
		<td>$151.42</td>
		<td>$160.71</td>
	</tr>
	<tr>
		<td>Tuesday</td>
		<td>$156.91</td>
		<td>$155.49</td>
	</tr>
	<tr>
		<td>Wednesday</td>
		<td>$158.25</td>
		<td>$165.31</td>
	</tr>
	<tr>
		<td>Thursday</td>
		<td style="font-weight:bold;color:red;">$175.48</td>
		<td style="font-weight:bold;color:red;">$173.05</td>
	</tr>
	<tr>
		<td>Friday</td>
		<td>$152.99</td>
		<td>$161.57</td>
	</tr>
	<tr>
		<td>Saturday</td>
		<td style="font-weight:bold;color:green;">$146.91</td>
		<td style="font-weight:bold;color:green;">$144.94</td>
	</tr>
	<tr>
		<td>Sunday</td>
		<td>$162.94</td>
		<td>$162.26</td>
	</tr>
</table>
<h2>Interpretation and Conclusion</h2>
<p>Without a doubt, the fact that LA and San Francisco are so close to each other definitely had an effect on the final results. The cities I chose were, more or less, based on my personal travel habits, so it&#8217;s highly likely that someone with a wildly different grouping of &#8220;home airports&#8221; would get different results.</p>
<p>No matter what, though, it seems that Saturday is the cheapest day to fly, and Thursday is the most expensive. For the best deals, you should buy your tickets from 6:00-8:00am <span class="caps">PST</span>. For the cheapest trip, plan for something in mid-May.</p>
<p>If you&#8217;d like to check out the dataset, or have any questions about how I created these graphs, please don&#8217;t hesitate to <a href='mailto:dan@dlo.me'>send me an email</a>.</p>
<p><a href="http://feedads.g.doubleclick.net/~a/rKbHlDGytsA6kFt_J90PZOuPy7Q/0/da"><img src="http://feedads.g.doubleclick.net/~a/rKbHlDGytsA6kFt_J90PZOuPy7Q/0/di" border="0" ismap="true"></img></a><br/>
<a href="http://feedads.g.doubleclick.net/~a/rKbHlDGytsA6kFt_J90PZOuPy7Q/1/da"><img src="http://feedads.g.doubleclick.net/~a/rKbHlDGytsA6kFt_J90PZOuPy7Q/1/di" border="0" ismap="true"></img></a></p><img src="http://feeds.feedburner.com/~r/dloewenherz/~4/QcjCB2AfxLs" height="1" width="1"/>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:33:"http://dlo.me/flying-on-the-cheap";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:22:"
   
   
   
   
   
 ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"Introspection in Vim";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"href";s:82:"http://feedproxy.google.com/~r/dloewenherz/~3/Lzh7JSyIfdE/introspection-python-vim";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2010-07-13T00:00:00-07:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:38:"http://dlo.me/introspection-python-vim";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:2304:"<p>As much as I like my <a href="http://www.vim.org">Vim</a>, there are times when I want it to be just a little cooler. So in XCode, for example, there&#8217;s this nice introspection feature that I&#8217;ve been dying to have for a while now.</p>
<p><img src="/images/autocomplete.png" alt="" /></p>
<p>Needless to say, I couldn&#8217;t stop myself from bringing this functionality to Vim. Here is the finished result:</p>
<p><img src="/images/autocomplete-vim.png" alt="" /></p>
<p>If pictures aren&#8217;t enough, you can also <a href="http://vimeo.com/13312423">watch a movie</a> if you&#8217;re still not convinced :).</p>
<h2>Instructions</h2>
<p>1. Install <a href="http://www.vim.org/scripts/script.php?script_id=1318">snippetsEmu</a> to <code>~/.vim/plugins/</code>.</p>
<p>2. Download <a href="http://dlo.s3.amazonaws.com/downloads/introspect.vim">introspection.vim</a> and also move it to <code>~/.vim/plugins/</code>.</p>
<p>3. (optional) Add <code>autocmd BufEnter *.py call FilterFile()</code> to your <code>.vimrc</code>. This calls the introspection function whenever you open a buffer containing a Python file.</p>
<h2>Usage</h2>
<p>1. Type up a function. E.g.</p>
<div class="highlight"><pre><code class="python"><span class="k">def</span> <span class="nf">insert_into_db</span><span class="p">(</span><span class="n">name</span><span class="p">,</span> <span class="n">company</span><span class="p">):</span>
    <span class="k">pass</span>
</code></pre>
</div>
<p>2. Save the file and type <code>:edit!</code>.</p>
<p>3. Now you can type <code>insert_into_db&lt;tab&gt;</code> and a snippet will appear. Use <code>&lt;tab&gt;</code> to navigate to the next field.</p>
<p>4. <a href="http://github.com/dlo/introspect.vim">Fork the code on Github</a> and get it working for other languages!</p>
<p><a href="http://feedads.g.doubleclick.net/~a/z4S4dj9DwXHu43km5cNKVvT3DJY/0/da"><img src="http://feedads.g.doubleclick.net/~a/z4S4dj9DwXHu43km5cNKVvT3DJY/0/di" border="0" ismap="true"></img></a><br/>
<a href="http://feedads.g.doubleclick.net/~a/z4S4dj9DwXHu43km5cNKVvT3DJY/1/da"><img src="http://feedads.g.doubleclick.net/~a/z4S4dj9DwXHu43km5cNKVvT3DJY/1/di" border="0" ismap="true"></img></a></p><img src="http://feeds.feedburner.com/~r/dloewenherz/~4/Lzh7JSyIfdE" height="1" width="1"/>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:38:"http://dlo.me/introspection-python-vim";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:22:"
   
   
   
   
   
 ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:37:"Distribution of Airline Ticket Prices";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"href";s:84:"http://feedproxy.google.com/~r/dloewenherz/~3/m_CO450iHQw/flight-ticket-distribution";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2010-05-23T00:00:00-07:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:40:"http://dlo.me/flight-ticket-distribution";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:1108:"<p>A few months back I did some research into ticket prices from and to four major cities in the U.S.: Miami, San Francisco, Los Angeles, and New York. I promised to release the results but just never got around to it. Because I want to give you all <strong>something</strong> to look at, behold this plot I made with the aggregate information between the four cities.</p>
<p>The y-axis is the ticket price in dollars.</p>
<p>I&#8217;ll get some more detailed analysis out of the data by the end of the week. Promise promise promise.</p>
<p><img src="/images/flights-prices-dates-1.png" class="bigimage" alt="" /></p>
<p><a href="http://feedads.g.doubleclick.net/~a/5GGx7sR2i9TxNJBxNLkvyO1uGyc/0/da"><img src="http://feedads.g.doubleclick.net/~a/5GGx7sR2i9TxNJBxNLkvyO1uGyc/0/di" border="0" ismap="true"></img></a><br/>
<a href="http://feedads.g.doubleclick.net/~a/5GGx7sR2i9TxNJBxNLkvyO1uGyc/1/da"><img src="http://feedads.g.doubleclick.net/~a/5GGx7sR2i9TxNJBxNLkvyO1uGyc/1/di" border="0" ismap="true"></img></a></p><img src="http://feeds.feedburner.com/~r/dloewenherz/~4/m_CO450iHQw" height="1" width="1"/>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:40:"http://dlo.me/flight-ticket-distribution";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:22:"
   
   
   
   
   
 ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:28:"Relative Line Numbers in Vim";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"href";s:88:"http://feedproxy.google.com/~r/dloewenherz/~3/DimOa4B7vqU/vim-with-relative-line-numbers";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2010-05-20T00:00:00-07:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:44:"http://dlo.me/vim-with-relative-line-numbers";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:2307:"<p><img src="http://code.google.com/p/vim/logo?logo_id=1262721660" alt="" /></p>
<p>I&#8217;ve been waiting for ages for relative line numbering (a patch that&#8217;s been available for quite a while) to be officially merged into <a href="http://code.google.com/p/vim/">Vim</a>. Well, that day has come :).</p>
<p>Why would you want relative line numbers for your editor? Well, for one, it makes those commands dependent upon line movement exponentially easier. Instead of having to guess how many lines up or down you may want to perform a command over, you&#8217;ve got the answer right in front of you. Check it out!</p>
<p><img src="/images/relative.png" alt="" /></p>
<p>I&#8217;m running Snow Leopard, hence the odd <code>ARCHFLAGS='-arch x86_64'</code> prefix. I have a few libraries that have been compiled for both 32-bit and 64-bit architectures, and if I don&#8217;t tell Vim which ones to use, it throws a hissy fit.</p>
<div class="highlight"><pre><code class="console"><span class="gp">$</span> hg clone https://vim.googlecode.com/hg/ vim
<span class="gp">$</span> <span class="nb">cd </span>vim
<span class="gp">$</span> hg checkout vim73
<span class="gp">$</span> env <span class="nv">ARCHFLAGS</span><span class="o">=</span><span class="s1">&#39;-arch x86_64&#39;</span> ./configure --enable-pythoninterp <span class="se">\</span>
<span class="go">    --enable-rubyinterp --disable-gui</span>
<span class="gp">$</span> env <span class="nv">ARCHFLAGS</span><span class="o">=</span><span class="s1">&#39;-arch x86_64&#39;</span> make
<span class="gp">$</span> sudo make install
</code></pre>
</div>
<p>This installs your vim in <code>/usr/local/bin/vim</code> by default. To turn on relative line numbering, just run <code>:set rnu</code>. Predictably, to turn it off, use <code>:set nornu</code>.</p>
<p><a href="http://feedads.g.doubleclick.net/~a/uXPH06L8oqIA3h_LEn9aPTPzFks/0/da"><img src="http://feedads.g.doubleclick.net/~a/uXPH06L8oqIA3h_LEn9aPTPzFks/0/di" border="0" ismap="true"></img></a><br/>
<a href="http://feedads.g.doubleclick.net/~a/uXPH06L8oqIA3h_LEn9aPTPzFks/1/da"><img src="http://feedads.g.doubleclick.net/~a/uXPH06L8oqIA3h_LEn9aPTPzFks/1/di" border="0" ismap="true"></img></a></p><img src="http://feeds.feedburner.com/~r/dloewenherz/~4/DimOa4B7vqU" height="1" width="1"/>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:44:"http://dlo.me/vim-with-relative-line-numbers";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:22:"
   
   
   
   
   
 ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:12:"OpenProvider";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"href";s:100:"http://feedproxy.google.com/~r/dloewenherz/~3/qAqnYXfJ8L8/openprovider-a-distributed-social-protocol";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2010-05-07T00:00:00-07:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:56:"http://dlo.me/openprovider-a-distributed-social-protocol";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:9980:"<h2>Intro</h2>
<p>Airplane rides are always a good time for reflection&#8212;there aren&#8217;t really any distractions (unless you&#8217;re unlucky enough to be sitting next to a crying baby) and the white noise of the engines provides for a nearly perfect brainstorming environment.</p>
<p>The main thing on my mind last weekend was the current state of the social web&#8212;how it&#8217;s broken and how best to &#8220;fix&#8221; it.</p>
<h2>Facebook</h2>
<p>One of the main problems that people have with the system as it is today is that the state of your information is currently in flux&#8212;there is no way to tell if the service that you&#8217;re using today will have the same privacy policy as it will tomorrow. <a href="http://www.facebook.com/">Facebook</a> is especially guilty of this alarming trend and others are likely to follow. For an illustrative timeline of Facebook&#8217;s privacy policy, check out the <a href="http://www.eff.org/deeplinks/2010/04/facebook-timeline/">post from the <span class="caps">EFF</span></a>.</p>
<p>The <a href="http://www.facebook.com/f8/">F8 conference</a> two weeks ago unveiled Facebook&#8217;s intention to own everything you do on the Internet, from the movies you watch on <a href="http://developers.facebook.com/showcase/entertainment?p=imdb"><span class="caps">IMDB</span></a> to the music you listen to on <a href="http://developers.facebook.com/showcase/entertainment?p=pandora">Pandora</a>. Understandably, a lot of people involved in the tech industry have been <a href="https://ssl.facebook.com/help/contact.php?show_form=delete_account">deleting their Facebook accounts</a> left and right. There is a lot of misunderstanding regarding <em>why</em> this is happening, and no, it isn&#8217;t because of the lack of privacy. The reason is that Facebook was sold to us on the promise that we would just be sharing our information with our friends and family, and not with advertisers and &#8220;partners&#8221;.</p>
<h2>The Plan</h2>
<p>For all the reasons mentioned in addition to many others, there has been an enormous push to change the way we think about social networking over the past few days. One project that&#8217;s gotten a lot of traction is <a href="http://www.joindiaspora.com/">diaspora</a>, a soon-to-be open source project being championed by 4 computer science students at <span class="caps">NYU</span>. No one has any real idea on what it is or how it will work, but I&#8217;m sure that we&#8217;ll be hearing more about them soon.</p>
<p>I do think what they&#8217;re doing is awesome, and I hope it works. I just wanted to get my thoughts down on paper before I forgot about them (as I frequently do). What follows is my plan for a distributed social protocol.</p>
<p>First of all, I&#8217;m going to go over the &#8220;must haves&#8221;&#8212;things that the ideal social network should have, whether it be distributed or centralized.</p>
<ol>
	<li>Accessibility (or Virality)</li>
	<li>Privacy</li>
	<li>Low barrier to entry</li>
	<li>Portability</li>
</ol>
<h3>Accessibility and Virality</h3>
<p>The first step in using a social network appropriately is finding your friends, and there&#8217;s no way to do this if all the searchable information is hidden. Complying with #4 above makes this extra difficult.</p>
<p>Well, there&#8217;s a way to solve it at the expense of losing &#8220;fuzzy search&#8221;, and that solution is hashing. A hash function maps a piece of data into a smaller, more manageable chunk, and may or may not be irreversible. E.g.</p>
<div class="highlight"><pre><code class="bash">&gt;&gt;&gt; sha1<span class="o">(</span><span class="s2">&quot;dloewenherz@gmail.com&quot;</span><span class="o">)</span>.hexdigest<span class="o">()</span>
c4080eb3969b7c95c5e38d563e15bd2407e35153
</code></pre>
</div>
<p>That value you see is not reversible. There is no function that will take <code>c4080eb3969b7c95c5e38d563e15bd2407e35153</code> as a parameter and will return dloewenherz@gmail.com. It&#8217;s never been done, and I don&#8217;t suspect it will be. Hashing email addresses in this manner will hide them to spammers while at the same time allowing people to search for them.</p>
<p>&#8220;How can you search for something that you can&#8217;t decode?&#8221;, you ask. Well, the cool thing is that when people search for you, the search query is itself encoded in the same way, so if the encoded search query is equivalent to the encoded email address, then there&#8217;s a match! For more info on hashing, check out <a href="http://en.wikipedia.org/wiki/Hash_function">Wikipedia</a> on the subject.</p>
<p>This leads into my proposal that there be a global identity database that is accessible and downloadable by anyone (addresses #3 above). It will store the encoded email (as described), plus two other pieces of information necessary to complete the puzzle.</p>
<ul class="code">
	<li><code>email</code></li>
	<li><code>provider</code></li>
</ul>
<p>So what&#8217;s a &#8220;provider&#8221;, you may ask? A provider is a social web service, like Facebook or Twitter, that controls a user&#8217;s information.</p>
<p>If the maintainers of the central node start turning to the dark side, well, everyone can and will abandon them, as others already have access to the data. <code>provider</code> is in itself worthless to a spammer.</p>
<h3>Connections</h3>
<p>A connection is a one-way link between two users, regardless of the provider. So if I have an account with provider A and my friend has an account with provider B, I will still be able to connect with him. In essence, all profiles function like public Twitter profiles. Private profiles sound like a good idea but I&#8217;m at a total loss as to how they might be implemented.</p>
<p>A user can only have an account with one provider at a time.</p>
<p>After I make a connection with someone, that connection is stored in my browser. Whenever I log into my provider, it pulls the follower info from the browser and updates my profile with the appropriate information. For browsers that aren&#8217;t compatible, you can simply store all the information on a flat file on your computer, and upload it to your provider whenever you decide to change. Providers themselves can store this info. Providers should allow for export and import of follower data. If they don&#8217;t, the users can leave.</p>
<p>The great thing about this system is that it prevents any chance of a bait-and-switch. Users will already have access to their connection data and can just start using another provider in the unlikely chance that it does happen.</p>
<h3>Privacy</h3>
<p>So all we&#8217;ve got now are connections. Now what?</p>
<p>Connections link profiles to profiles. It&#8217;s up to each provider regarding what information to expose to the world at large, but it all follows the same basic protocol. So <em>no matter what</em>, if I go to</p>
<div class="highlight"><pre><code class="bash">http://www.example.org/profile/?id<span class="o">=</span>1234567
&amp;format<span class="o">=</span>json
&amp;key<span class="o">=</span>6b7894e44e440f83e3fa4be3a6d98961c70d6f2f
</code></pre>
</div>
<p>I&#8217;ll get back something like</p>
<div class="highlight"><pre><code class="javascript"><span class="p">{</span><span class="s2">&quot;profile&quot;</span><span class="o">:</span> <span class="p">{</span><span class="s2">&quot;first_name&quot;</span><span class="o">:</span> <span class="s2">&quot;Dan&quot;</span><span class="p">,</span> <span class="s2">&quot;last_name&quot;</span><span class="o">:</span> <span class="s2">&quot;Loewenherz&quot;</span> <span class="p">}}</span>
</code></pre>
</div>
<p>The <code>key</code> is my email address (dloewenherz@gmail.com) plus a <a href="http://en.wikipedia.org/wiki/Salt_(cryptography)">cryptographic salt</a>. The salt to use is something that the community as a whole could agree upon. Using an access key like the one above ensures that only people who know my email address can access my profile information. Nifty, huh?</p>
<p>&#8220;So that all sounds cool, but hold on a second,&#8221; you say. &#8220;Didn&#8217;t you just say that it&#8217;s a huge problem that certain providers control our profile info?&#8221;.</p>
<p>Well, the answer is yes, I did. Kind of. But I left something out. Today, if you leave Facebook, you lose all of your connections to your friends. The connections you&#8217;ve spent time &#8220;making&#8221; online are really what&#8217;s valuable&#8212;not the personal information you post to your profile. Let&#8217;s not kid ourselves, Facebook can guess most of what we think is private <em>just</em> from our connections (see <a href="http://www.boston.com/bostonglobe/ideas/articles/2009/09/20/project_gaydar_an_mit_experiment_raises_new_questions_about_online_privacy/">Project Gaydar</a> for a real example).</p>
<p>The power to control the connections is the only power that really matters. And that&#8217;s already been addressed. If a provider chooses to not let you export profile info, then that&#8217;s their prerogative. And it&#8217;s also the user&#8217;s prerogative to leave them.</p>
<h2>Conclusion</h2>
<p>Social networking is still in its infancy, and it shows. Even though most of what I went over in this post was extremely &#8220;high-end&#8221; and abstract, I think I make some valid points and hope it leads into more detailed discussion of how something like this might work. I think there&#8217;s something to it.</p>
<p><a href="http://feedads.g.doubleclick.net/~a/sXcbYMoO3n3fYE56P5P131XzCrM/0/da"><img src="http://feedads.g.doubleclick.net/~a/sXcbYMoO3n3fYE56P5P131XzCrM/0/di" border="0" ismap="true"></img></a><br/>
<a href="http://feedads.g.doubleclick.net/~a/sXcbYMoO3n3fYE56P5P131XzCrM/1/da"><img src="http://feedads.g.doubleclick.net/~a/sXcbYMoO3n3fYE56P5P131XzCrM/1/di" border="0" ismap="true"></img></a></p><img src="http://feeds.feedburner.com/~r/dloewenherz/~4/qAqnYXfJ8L8" height="1" width="1"/>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:56:"http://dlo.me/openprovider-a-distributed-social-protocol";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:22:"
   
   
   
   
   
 ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"On Piracy.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"href";s:103:"http://feedproxy.google.com/~r/dloewenherz/~3/n-1ivrzvIWo/why-piracy-is-sometimes-good-for-the-software";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2010-02-27T00:00:00-08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:59:"http://dlo.me/why-piracy-is-sometimes-good-for-the-software";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:3502:"<p>This morning at the gym I started thinking about how nice it would be to be a Photoshop guru.</p>
<p>The ability to just have an idea of an image of design in your head, open up Photoshop and come out with a snazzy-looking result after a few minutes of hard work. It would be frickin&#8217; awesome. Unfortunately all the tools I really have at my disposal for design work are <span class="caps">HTML</span> + <span class="caps">CSS</span>. Bummer.</p>
<p>And then there&#8217;s the cost.</p>
<p>A copy of Photoshop CS4 (the latest version in Adobe&#8217;s suite) goes for $699 if you&#8217;re buying it fresh off the presses. The extended version will burn a grand in your pocket.</p>
<p>That&#8217;s way too expensive. Especially if you just want to play around (like I do). Which leads to why so many people download Photoshop off of Bittorrent. Free is free. Honestly, how many Photoshop gurus actually bought the damn thing when they were first curious about it? I doubt very many.</p>
<p>I don&#8217;t know why this is what first came to me, but I thought for a second that maybe Adobe wants its software to be pirated. Look at it this way: maybe Adobe charging such an exorbitant amount for its software is just a form of price discrimination.</p>
<p>They know that businesses will fork over the price as long as its not ridiculous. Hell, if you&#8217;re a design firm you need Photoshop. You bite your lip, buy the software, hire a great designer (who probably learned Photoshop off of a pirated version), and move on. It sucks, but no company wants to be using pirated software. It&#8217;s just not a good idea.</p>
<p>If you don&#8217;t have the money, you&#8217;ll just download it.</p>
<p>Here&#8217;s a little example to illustrate why Adobe wants people to pirate their software. Fixed costs for software production is very, very high (programmers are expensive ;) ). On the other hand, variable costs are basically nil (you&#8217;re basically paying for the cost of bandwidth if its download only, and the cost of shipping otherwise). A software company can charge nearly nothing for software given that people will continue to buy it forever into the future.</p>
<p>Other products, like jet engines, have a high variable cost, so it would be pretty stupid to charge a penny for one. You&#8217;d go out of business in the blink of an eye.</p>
<p>Now let&#8217;s imagine that Adobe charged $9.99 for Photoshop CS4. I would buy it without a second thought. So would maybe other people who wanted to get their feet wet in design. Flipside: Adobe now needs to ship 70 times more copies.</p>
<p>This is a bad business decision if more than 1 of 70 Photoshop installations are legal. I&#8217;m actually inclined to say that the number is higher. In the end, it&#8217;s better business sense to keep the price at an astronomically high value and let the rest of us download the thing on Bittorrent. It&#8217;s a small price to pay, but Adobe makes more money in the end.</p>
<p>What do you think?</p>
<p><a href="http://feedads.g.doubleclick.net/~a/vKznAXl4Hb674EepUQLnbNBUv58/0/da"><img src="http://feedads.g.doubleclick.net/~a/vKznAXl4Hb674EepUQLnbNBUv58/0/di" border="0" ismap="true"></img></a><br/>
<a href="http://feedads.g.doubleclick.net/~a/vKznAXl4Hb674EepUQLnbNBUv58/1/da"><img src="http://feedads.g.doubleclick.net/~a/vKznAXl4Hb674EepUQLnbNBUv58/1/di" border="0" ismap="true"></img></a></p><img src="http://feeds.feedburner.com/~r/dloewenherz/~4/n-1ivrzvIWo" height="1" width="1"/>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:59:"http://dlo.me/why-piracy-is-sometimes-good-for-the-software";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:22:"
   
   
   
   
   
 ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:41:"Random Queries on the Appengine Datastore";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"href";s:94:"http://feedproxy.google.com/~r/dloewenherz/~3/X2rFH2AEmSE/querying-for-n-random-entities-using";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2010-01-25T00:00:00-08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:50:"http://dlo.me/querying-for-n-random-entities-using";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:6485:"<p>First, this post is 100% programming related. So if you don&#8217;t care about programming, just walk away.</p>
<p>Chances are that if you&#8217;re a Python or Java developer, you&#8217;ve run into Google Appengine at one point or another. A perennial issue with the datastore is that there&#8217;s no officially documentation on how to pull random entities from your database. Well friends, I&#8217;d like to let you in on a little secret for how you can do this.</p>
<p>It&#8217;s quite simple, actually. Let&#8217;s say you have a simple model, called Users. E.g.</p>
<div class="highlight"><pre><code class="python"><span class="kn">from</span> <span class="nn">google.appengine.ext</span> <span class="kn">import</span> <span class="n">db</span>

<span class="k">class</span> <span class="nc">User</span><span class="p">(</span><span class="n">db</span><span class="o">.</span><span class="n">Model</span><span class="p">):</span>
    <span class="n">first_name</span> <span class="o">=</span> <span class="n">db</span><span class="o">.</span><span class="n">StringProperty</span><span class="p">()</span>
    <span class="n">last_name</span> <span class="o">=</span> <span class="n">db</span><span class="o">.</span><span class="n">StringProperty</span><span class="p">()</span>
    <span class="n">email</span> <span class="o">=</span> <span class="n">db</span><span class="o">.</span><span class="n">EmailProperty</span><span class="p">()</span>
</code></pre>
</div>
<p>Make another model called UserCount (this model will only have one entity, and the count will be equivalent to the number of Users that have been inserted into the database). Instantiate a UserCount entity with an initial count of 0 before you do anything.</p>
<div class="highlight"><pre><code class="python"><span class="k">class</span> <span class="nc">UserCount</span><span class="p">(</span><span class="n">db</span><span class="o">.</span><span class="n">Model</span><span class="p">):</span>
    <span class="n">count</span> <span class="o">=</span> <span class="n">db</span><span class="o">.</span><span class="n">IntegerProperty</span><span class="p">(</span><span class="n">default</span> <span class="o">=</span> <span class="mi">0</span><span class="p">)</span>
</code></pre>
</div>
<p>Simple so far. Do something similar to this when you insert a User into the database.</p>
<div class="highlight"><pre><code class="python"><span class="n">uc</span> <span class="o">=</span> <span class="n">UserCount</span><span class="o">.</span><span class="n">get_by_key_name</span><span class="p">(</span><span class="s">&quot;1&quot;</span><span class="p">)</span>
<span class="n">uc</span><span class="o">.</span><span class="n">count</span> <span class="o">+=</span> <span class="mi">1</span>
<span class="n">uc</span><span class="o">.</span><span class="n">put</span><span class="p">()</span>

<span class="n">u</span> <span class="o">=</span> <span class="n">User</span><span class="p">(</span><span class="n">key_name</span> <span class="o">=</span> <span class="nb">str</span><span class="p">(</span><span class="n">uc</span><span class="o">.</span><span class="n">count</span><span class="p">),</span> <span class="n">first_name</span> <span class="o">=</span> <span class="s">&quot;Steve&quot;</span><span class="p">,</span> <span class="n">last_name</span> <span class="o">=</span> <span class="s">&quot;Jobs&quot;</span><span class="p">,</span>
        <span class="n">email</span> <span class="o">=</span> <span class="s">&quot;sjobs@apple.com&quot;</span><span class="p">)</span>
</code></pre>
</div>
<p>To get random data, use Python&#8217;s random module, and call the User&#8217;s by their key names. Caching is recommended. You may want to do something similar to the below.</p>
<div class="highlight"><pre><code class="python"><span class="kn">from</span> <span class="nn">random</span> <span class="kn">import</span> <span class="n">sample</span>
<span class="kn">from</span> <span class="nn">google.appengine.api</span> <span class="kn">import</span> <span class="n">memcache</span>

<span class="n">uc</span> <span class="o">=</span> <span class="n">UserCount</span><span class="o">.</span><span class="n">get_by_key_name</span><span class="p">(</span><span class="s">&quot;1&quot;</span><span class="p">)</span>
<span class="n">N</span> <span class="o">=</span> <span class="mi">5</span>

<span class="n">ids</span> <span class="o">=</span> <span class="n">sample</span><span class="p">(</span><span class="nb">range</span><span class="p">(</span><span class="mi">1</span><span class="p">,</span> <span class="n">uc</span><span class="o">.</span><span class="n">count</span><span class="o">+</span><span class="mi">1</span><span class="p">),</span> <span class="n">N</span><span class="p">)</span>

<span class="n">users</span> <span class="o">=</span> <span class="p">[]</span>
<span class="k">for</span> <span class="nb">id</span> <span class="ow">in</span> <span class="n">ids</span><span class="p">:</span>
    <span class="n">user</span> <span class="o">=</span> <span class="n">memcache</span><span class="o">.</span><span class="n">get</span><span class="p">(</span><span class="s">&quot;user_</span><span class="si">%d</span><span class="s">&quot;</span> <span class="o">%</span> <span class="nb">id</span><span class="p">)</span>
    <span class="k">if</span> <span class="ow">not</span> <span class="n">user</span><span class="p">:</span>
        <span class="n">user</span> <span class="o">=</span> <span class="n">User</span><span class="o">.</span><span class="n">get_by_key_name</span><span class="p">(</span><span class="nb">str</span><span class="p">(</span><span class="nb">id</span><span class="p">))</span>
    <span class="n">users</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">user</span><span class="p">)</span>
</code></pre>
</div>
<p>And that is how to get random entities from the Google Appengine datastore.</p>
<p><a href="http://feedads.g.doubleclick.net/~a/2J93ZhHYNFnMNl6JXSfhXD2-Mrw/0/da"><img src="http://feedads.g.doubleclick.net/~a/2J93ZhHYNFnMNl6JXSfhXD2-Mrw/0/di" border="0" ismap="true"></img></a><br/>
<a href="http://feedads.g.doubleclick.net/~a/2J93ZhHYNFnMNl6JXSfhXD2-Mrw/1/da"><img src="http://feedads.g.doubleclick.net/~a/2J93ZhHYNFnMNl6JXSfhXD2-Mrw/1/di" border="0" ismap="true"></img></a></p><img src="http://feeds.feedburner.com/~r/dloewenherz/~4/X2rFH2AEmSE" height="1" width="1"/>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:50:"http://dlo.me/querying-for-n-random-entities-using";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:22:"
   
   
   
   
   
 ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"When to Buy Airline Tickets";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"href";s:85:"http://feedproxy.google.com/~r/dloewenherz/~3/iYiIx8Bn9is/when-to-buy-airline-tickets";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2010-01-24T00:00:00-08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:41:"http://dlo.me/when-to-buy-airline-tickets";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:5472:"<p>This weekend I&#8217;ve been mulling over how annoying it was that there isn&#8217;t really freely available data on prices for airline tickets. Farecast, the one site that I was aware of that did <strong>something</strong> like this, was purchased by Microsoft and is now a part of Bing Travel.</p>
<p>So what separates the market for airline tickets and others is that ticket prices are extremely sporadic from day-to-day and even by the hour. This makes getting a really good deal on airline tickets very difficult for the average consumer. There&#8217;s only one participant in the transaction that gets a good deal, and that is the airline. Their pricing schemes are actually quite ingenious when you begin to think about it.</p>
<p>Typically, an airline will have multiple pricing ranges for seats on the same flights. That is, 10% of seats will be $50-100, 40% will be $100-$150, and 50% will be &gt;$150.</p>
<p>The gist of price discrimination is that there are usually people who are willing to pay than you are for the same product or service. Instead of charging everyone a flat rate, a company will vary the price based on the customer. Simply put, movie theaters don&#8217;t have senior and student discounts because they&#8217;re particularly nice, they do it because they make more money this way =). See Wikipedia for more information.</p>
<p>Alright, back to the meat and potatoes.</p>
<p>After some thought, I decided Mechanical Turk would be the best way to gather this info. So I got down and wrote a Python script that randomly generated 500 origin cities, destination cities, and dates within the next 329 days (it seems most airlines don&#8217;t give price information past this amount of time). The cities were only the ones I was interesting in (Miami, LA, <span class="caps">NYC</span>, and San Francisco).</p>
<p>I set up the job, uploaded the batch of data, and salivated throughout the night. When I woke up today, I got down to analyzing the data.</p>
<p>Some interesting patterns emerged.</p>
<p>First of all, Wednesday is (on average), the most expensive day to travel, unless you&#8217;re flying from LA, where a Thursday ticket will cost you on average $500 to Miami, <span class="caps">NYC</span>, or SF. Miami was the worst city to fly from, with the most expensive day costing a traveler about 564 buckeroos.</p>
<p><img src="http://chart.apis.google.com/chart?chd=t:181.97,130.41,563.89,161.72,186.17,337.64,394.90|191.78,295.23,231.84,126.45,487.75,308.84,216.64|154.47,208.92,433.63,190.5,160.23,179.96,211.60|145.98,223.57,307.36,261.38,166.19,246.40,213.23&amp;cht=bvg&amp;chds=0,600&amp;chl=Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday&amp;chxt=y&amp;chxr=0,0,600,100&amp;chco=468966,FFB03B,B64926,8E2800&amp;chdl=Miami|Los%20Angeles|NYC|San%20Francisco&amp;chs=650x200&amp;chbh=10,5,15" alt="" /></p>
<p>Here are average weekly ticket prices between the four cities over this year.</p>
<p><img src="http://chart.apis.google.com/chart?chd=t:288.00,172.25,225.99,161.50,130.50,158.38,169.00,109.13,156.40,198.00,138.43,214.09,167.31,110.59,188.17,118.14,156.45,150.99,183.25,163.00,139.61,211.20,212.42,162.13,180.33,159.75,168.99,187.56,152.27,146.78,201.54,154.20,179.33,148.21,132.62,191.88,219.86,187.63,165.88,169.75,206.58,162.15,185.50,197.83,185.14,193.30,176.30,186.2&amp;cht=ls&amp;chl=Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec&amp;chxt=y&amp;chxr=0,0,400,100&amp;chco=4D89F9&amp;chs=400x75&amp;chds=0,350&amp;chm=B" alt="" /></p>
<p>Prices appear to be highest for the next week, then hit a yearly low in late February, when the average ticket price hits $109.13. Cheap. Prices are a little unpredictable over the summer, hit highs in early July and late September, and plateau over the holiday season. We&#8217;ll see how much of this is due to the day that this data was gathered.</p>
<p>How about cheapest airlines? Well, you may be surprised about this as well.</p>
<table>
	<tr>
		<th>Airline</th>
		<th>Number of tickets</th>
	</tr>
	<tr>
		<td>Delta Air Lines</td>
		<td> 100</td>
	</tr>
	<tr>
		<td>United Airlines</td>
		<td> 62</td>
	</tr>
	<tr>
		<td>AirTran Airways</td>
		<td> 54</td>
	</tr>
	<tr>
		<td>US Airways</td>
		<td> 36</td>
	</tr>
	<tr>
		<td>Alaska Airlines</td>
		<td> 27</td>
	</tr>
	<tr>
		<td>Virgin America</td>
		<td> 20</td>
	</tr>
	<tr>
		<td>Continental Airlines</td>
		<td> 10</td>
	</tr>
	<tr>
		<td>Frontier Airlines</td>
		<td> 7</td>
	</tr>
	<tr>
		<td>JetBlue Airways</td>
		<td> 7</td>
	</tr>
	<tr>
		<td>Spirit Airlines</td>
		<td> 3</td>
	</tr>
	<tr>
		<td>Midwest Airlines</td>
		<td> 1</td>
	</tr>
	<tr>
		<td>Other</td>
		<td> 1</td>
	</tr>
</table>
<p>Southwest didn&#8217;t make it <strong>once</strong>! Now that was a surprise.</p>
<p>This is only the tip of the iceberg. Over the next week, I&#8217;ll keep listing HITs on Mechanical Turk, and should have some more robust data on <strong>when</strong> the best times to buy tickets are. Stay tuned&#8230;</p>
<p><a href="http://feedads.g.doubleclick.net/~a/zF7EAEd1ZiIcPGMeIeddf6ASeCA/0/da"><img src="http://feedads.g.doubleclick.net/~a/zF7EAEd1ZiIcPGMeIeddf6ASeCA/0/di" border="0" ismap="true"></img></a><br/>
<a href="http://feedads.g.doubleclick.net/~a/zF7EAEd1ZiIcPGMeIeddf6ASeCA/1/da"><img src="http://feedads.g.doubleclick.net/~a/zF7EAEd1ZiIcPGMeIeddf6ASeCA/1/di" border="0" ismap="true"></img></a></p><img src="http://feeds.feedburner.com/~r/dloewenherz/~4/iYiIx8Bn9is" height="1" width="1"/>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:41:"http://dlo.me/when-to-buy-airline-tickets";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:4:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:11:"dloewenherz";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:14:"emailServiceId";a:1:{i:0;a:5:{s:4:"data";s:11:"dloewenherz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:18:"feedburnerHostname";a:1:{i:0;a:5:{s:4:"data";s:28:"http://feedburner.google.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"feedFlare";a:16:{i:0;a:5:{s:4:"data";s:24:"Subscribe with My Yahoo!";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:79:"http://add.my.yahoo.com/rss?url=http%3A%2F%2Ffeeds.feedburner.com%2Fdloewenherz";s:3:"src";s:59:"http://us.i1.yimg.com/us.yimg.com/i/us/my/addtomyyahoo4.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:24:"Subscribe with NewsGator";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:103:"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2Fdloewenherz";s:3:"src";s:42:"http://www.newsgator.com/images/ngsub1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:21:"Subscribe with My AOL";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:83:"http://feeds.my.aol.com/add.jsp?url=http%3A%2F%2Ffeeds.feedburner.com%2Fdloewenherz";s:3:"src";s:108:"http://o.aolcdn.com/favorites.my.aol.com/webmaster/ffclient/webroot/locale/en-US/images/myAOLButtonSmall.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:24:"Subscribe with Bloglines";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:68:"http://www.bloglines.com/sub/http://feeds.feedburner.com/dloewenherz";s:3:"src";s:48:"http://www.bloglines.com/images/sub_modern11.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:23:"Subscribe with Netvibes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:89:"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2Fdloewenherz";s:3:"src";s:44:"http://www.netvibes.com/img/add2netvibes.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:21:"Subscribe with Google";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:84:"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2Fdloewenherz";s:3:"src";s:51:"http://buttons.googlesyndication.com/fusion/add.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:25:"Subscribe with Pageflakes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:92:"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2Fdloewenherz";s:3:"src";s:87:"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:21:"Subscribe with Plusmo";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:77:"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2Fdloewenherz";s:3:"src";s:43:"http://plusmo.com/res/graphics/fbplusmo.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:34:"Subscribe with The Free Dictionary";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:97:"http://www.thefreedictionary.com/_/hp/AddRSS.aspx?http%3A%2F%2Ffeeds.feedburner.com%2Fdloewenherz";s:3:"src";s:48:"http://img.tfd.com/hp/addToTheFreeDictionary.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:9;a:5:{s:4:"data";s:28:"Subscribe with Bitty Browser";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:109:"http://www.bitty.com/manual/?contenttype=rssfeed&contentvalue=http%3A%2F%2Ffeeds.feedburner.com%2Fdloewenherz";s:3:"src";s:48:"http://www.bitty.com/img/bittychicklet_91x17.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:10;a:5:{s:4:"data";s:23:"Subscribe with Live.com";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:72:"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2Fdloewenherz";s:3:"src";s:141:"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:11;a:5:{s:4:"data";s:25:"Subscribe with Excite MIX";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:80:"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2Fdloewenherz";s:3:"src";s:42:"http://image.excite.co.uk/mix/addtomix.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:12;a:5:{s:4:"data";s:21:"Subscribe with Webwag";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:85:"http://www.webwag.com/wwgthis.php?url=http%3A%2F%2Ffeeds.feedburner.com%2Fdloewenherz";s:3:"src";s:40:"http://www.webwag.com/images/wwgthis.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:13;a:5:{s:4:"data";s:28:"Subscribe with Podcast Ready";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:101:"http://www.podcastready.com/oneclick_bookmark.php?url=http%3A%2F%2Ffeeds.feedburner.com%2Fdloewenherz";s:3:"src";s:58:"http://www.podcastready.com/images/podcastready_button.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:14;a:5:{s:4:"data";s:20:"Subscribe with Wikio";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:82:"http://www.wikio.com/subscribe?url=http%3A%2F%2Ffeeds.feedburner.com%2Fdloewenherz";s:3:"src";s:45:"http://www.wikio.com/shared/img/add2wikio.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:15;a:5:{s:4:"data";s:29:"Subscribe with Daily Rotation";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:91:"http://www.dailyrotation.com/index.php?feed=http%3A%2F%2Ffeeds.feedburner.com%2Fdloewenherz";s:3:"src";s:40:"http://www.dailyrotation.com/rss-dr2.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}s:4:"type";i:512;s:7:"headers";a:10:{s:13:"last-modified";s:29:"Thu, 02 Jun 2011 19:12:14 GMT";s:4:"etag";s:27:"wlQ96c+XZbFs6RS5+QEOkOcoJZE";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"date";s:29:"Thu, 02 Jun 2011 19:12:14 GMT";s:7:"expires";s:29:"Thu, 02 Jun 2011 19:12:14 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";s:17:"transfer-encoding";s:7:"chunked";}s:5:"build";s:14:"20090627192103";}