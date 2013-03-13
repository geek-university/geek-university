# encoding: utf-8
# Autogenerated by the db:seed:dump task
# Do not hesitate to tweak this to your needs

AdminUser.create(email: 'admin@example.com', password: 'password')

Course.create([
  {name: "Web development with Django", short_summary: 'The Web framework for perfectionists (with deadlines). Django makes it easier to build better Web apps more quickly and with less code.', description: '<h3 style="text-align: center;">Web development with Django</h3><p>Django is a high-level Python Web framework that encourages rapid development and clean, pragmatic design.\r\n\r\nDeveloped by a fast-moving online-news operation, Django was designed to handle two challenges: the intensive deadlines of a newsroom and the stringent requirements of the experienced Web developers who wrote it. It lets you build high-performing, elegant Web applications quickly. <strong>Django focuses on automating as much as possible and adhering to the DRY principle.</strong></p>', organisation: "Geek university team", start_date: "2013-03-15", end_date: "2013-05-15", published: 1, created_at: "2013-03-10 11:32:32", updated_at: "2013-03-10 12:15:08", logo_file_name: "html5css33.png", logo_content_type: "image/png", logo_file_size: 18680, logo_updated_at: "2013-03-10 12:15:08"},
  {name: "RESTful web services", short_summary: "Representational State Transfer (REST) is a style of software architecture for distributed systems such as the World Wide Web. REST has emerged as a predominant Web service design model.", description: "The REST architectural style was developed by W3C Technical Architecture Group [5] in parallel with HTTP/1.1, based on the existing design of HTTP/1.0.[6] The World Wide Web represents the largest implementation of a system conforming to the REST architectural style. REST exemplifies how the Web's architecture emerged by characterizing and constraining the macro-interactions of the four components of the Web, namely origin servers, gateways, proxies and clients, without imposing limitations on the individual participants. As such, REST essentially governs the proper behavior of participants.\\r\\nREST-style architectures consist of clients and servers. Clients initiate requests to servers; servers process requests and return appropriate responses. Requests and responses are built around the transfer of representations of resources. A resource can be essentially any coherent and meaningful concept that may be addressed. A representation of a resource is typically a document that captures the current or intended state of a resource.\\r\\nThe client begins sending requests when it is ready to make the transition to a new state. While one or more requests are outstanding, the client is considered in transition. The representation of each application state contains links that may be used the next time the client chooses to initiate a new state-transition.[7]\\r\\nREST facilitates the transaction between web servers by allowing loose coupling between different services. REST is less strongly typed than its counterpart, SOAP. The REST language uses nouns and verbs, and has an emphasis on readability. Unlike SOAP, REST does not require XML parsing and does not require a message header to and from a service provider. This ultimately uses less bandwidth. REST error-handling also differs from that used by SOAP.", organisation: "Geek university team", start_date: "2013-07-15", end_date: "2013-11-18", published: 2, created_at: "2013-03-10 12:26:56", updated_at: "2013-03-10 12:27:05", logo_file_name: "images_(1).jpg", logo_content_type: "image/jpeg", logo_file_size: 8058, logo_updated_at: "2013-03-10 12:26:56"},
  {name: "Web optimizations", short_summary: "Best Practices for Speeding Up Your Web Site", description: "Minimize HTTP Requests\\r\\ntag: content\\r\\n80% of the end-user response time is spent on the front-end. Most of this time is tied up in downloading all the components in the page: images, stylesheets, scripts, Flash, etc. Reducing the number of components in turn reduces the number of HTTP requests required to render the page. This is the key to faster pages.\\r\\nOne way to reduce the number of components in the page is to simplify the page's design. But is there a way to build pages with richer content while also achieving fast response times? Here are some techniques for reducing the number of HTTP requests, while still supporting rich page designs.\\r\\nCombined files are a way to reduce the number of HTTP requests by combining all scripts into a single script, and similarly combining all CSS into a single stylesheet. Combining files is more challenging when the scripts and stylesheets vary from page to page, but making this part of your release process improves response times.\\r\\nCSS Sprites are the preferred method for reducing the number of image requests. Combine your background images into a single image and use the CSS background-image and background-position properties to display the desired image segment.\\r\\nImage maps combine multiple images into a single image. The overall size is about the same, but reducing the number of HTTP requests speeds up the page. Image maps only work if the images are contiguous in the page, such as a navigation bar. Defining the coordinates of image maps can be tedious and error prone. Using image maps for navigation is not accessible too, so it's not recommended.\\r\\nInline images use the data: URL scheme to embed the image data in the actual page. This can increase the size of your HTML document. Combining inline images into your (cached) stylesheets is a way to reduce HTTP requests and avoid increasing the size of your pages. Inline images are not yet supported across all major browsers.\\r\\nReducing the number of HTTP requests in your page is the place to start. This is the most important guideline for improving performance for first time visitors. As described in Tenni Theurer's blog post Browser Cache Usage - Exposed!, 40-60% of daily visitors to your site come in with an empty cache. Making your page fast for these first time visitors is key to a better user experience", organisation: "Yahoo", start_date: "2013-05-01", end_date: "2013-09-19", published: 2, created_at: "2013-03-10 12:27:47", updated_at: "2013-03-10 12:27:55", logo_file_name: "images_(2).jpg", logo_content_type: "image/jpeg", logo_file_size: 7492, logo_updated_at: "2013-03-10 12:27:47"},
  {name: "Search engine optimization", short_summary: "For a site that keeps old versions of web pages, see web archive.\\r\\nA web cache is a mechanism for the temporary storage (caching) of web documents, such as HTML pages and images.", description: "Systems\\r\\n\\r\\nWeb caches can be used in various systems.\\r\\nA search engine may cache a website.\\r\\nA forward cache is a cache outside the webserver's network, e.g. on the client software's ISP or company network.[2]\\r\\nA network-aware forward cache is just like a forward cache but only caches heavily accessed items.[3]\\r\\nA reverse cache sits in front of one or more Web servers and web applications, accelerating requests from the Internet.[4]\\r\\nA client, such as a web browser, can store web content for reuse. For example, if the back button is pressed, the local cached version of a page may be displayed instead of a new request being sent to the web server.\\r\\nA web proxy sitting between the client and the server can evaluate HTTP headers and choose to store web content.\\r\\nA content delivery network can retain copies of web content at various points throughout a network.\\r\\n[edit]Cache control\\r\\n\\r\\nHTTP defines three basic mechanisms for controlling caches: freshness, validation, and invalidation.[5]\\r\\nFreshness \\r\\nallows a response to be used without re-checking it on the origin server, and can be controlled by both the server and the client. For example, the Expires response header gives a date when the document becomes stale, and the Cache-Control: max-age directive tells the cache how many seconds the response is fresh for.\\r\\nValidation \\r\\ncan be used to check whether a cached response is still good after it becomes stale. For example, if the response has a Last-Modified header, a cache can make a conditional request using the If-Modified-Since header to see if it has changed. The ETag (entity tag) mechanism also allows for both strong and weak validation.\\r\\nInvalidation \\r\\nis usually a side effect of another request that passes through the cache. For example, if a URL associated with a cached response subsequently gets a POST, PUT or DELETE request, the cached response will be invalidated.", organisation: "White Magic (c)", start_date: "2012-05-14", end_date: "2014-04-30", published: 1, created_at: "2013-03-10 12:28:39", updated_at: "2013-03-10 12:28:39", logo_file_name: "images_(3).jpg", logo_content_type: "image/jpeg", logo_file_size: 6973, logo_updated_at: "2013-03-10 12:28:39"},
], :without_protection => true )


Section.create([
  {course_id: 1, name: 'Django: the basics', date: '2013-06-08'},
  {course_id: 1, name: 'Django: advanced topics', date: '2013-07-05'},
  {course_id: 2, name: 'Rest in life', date: '2013-07-02'},
  {course_id: 2, name: 'Rest Ext', date: '2013-07-05'}
])

Lecture.create([
    {section_id: 1, name: '1', position: 2, youtube_link: 'p-WXiqrzAf8'},
    {section_id: 2, name: '2', position: 1, youtube_link: 'JU2SeliQvMM'},
    {section_id: 2, name: '2', position: 1, youtube_link: 'tOMOM8QbfuY'},
    {section_id: 3, name: '1', position: 1, youtube_link: 'JU2SeliQvMM'},
    {section_id: 4, name: 'asd', position: 2, youtube_link: 'tOMOM8QbfuY'}
])

Document.create([
    {section_id: 1, name: 'doc', position: 3, body: 'this is document'},
    {section_id: 2, name: 'doc2', position: 5, body: 'this is another document'}
])

Course.first.users.create({:username => 'Student', :email => 'student@example.com', :password => 'password'})
Course.find(2).users.create({:username => 'Student2', :email => 'student2@example.com', :password => 'password'})

Course.first.users.create({username: 'Teacher', email: 'teacher@example.com', password: 'password'})
CourseUser.last.update_attributes({can_manage: true}, :without_protection => true)
#Course.find(2).teachers.create({:username => 'Teacher2', :email => 'teacher2@example.com', :password => 'password'})