<%inherit file="base.mako" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    ${self.head()}
  </head>
  <body>
    <div id="content" class="tutorial">
      ${self.header()}
      <div id="body-wrap">	
	     <div class="page-wide">        
	        <h1>tutorials</h1>
          <div class="page-right-medium">
              <p>This section contains tutorials about specific tasks in openFrameworks. If you want to contribute a tutorial, fork the <a href="http://github.com/openframeworks/ofSite">ofSite repository in github</a> and add your tutorial in markdown or asciidoc format inside the _tutorials folder. See the <a href="/tutorials#wishlist">tutorial wish list</a> for ideas.</p>
              </p>
          </div>
        </div><!-- End Page Wide -->  
		    
        % for category in categories.keys():
            %if len(categories[category])!=0:
              <div class="page-wide sectiontitle">  
                <h2>${category}</h2>
              </div>
              <div class="page-wide">  
                <ul class="articles">
                % for article in categories[category]:
                    <li><span class="external-dot"> ></span>&nbsp;<a href="/tutorials/${category}/${article.file}">${article.title}</a></br>
                        <p>${article.summary}</p>
                    </li>
                % endfor
                </ul>
              </div><!-- End Page Wide -->
            % endif
        % endfor
          

        <div id="wishlist" class="page-wide sectiontitle">  
          <h2>tutorial wish list</h2>
        </div>
        <div class="page-wide">
          <p>These are highly desired tutorials. To contribute a tutorial, fork the <a href="http://github.com/openframeworks/ofSite">ofSite repository in github</a> and add your tutorial in markdown or asciidoc format inside the _tutorials folder.</p>
          <ul>
            <li>basics of graphics - how to draw things</li>
            <li>ofPixels, ofTexture, ofImage</li>
            <li>gl - getting started, ofFbo, ofVbo</li>
            <li>cameras - basics of ofEasyCam, ofCamera</li>
            <li>std::map</li>
          </ul>
        </div>

      </div><!-- End Body Wrap -->
      
      <div id="footer">
        ${self.footer()}
      </div> <!-- End Footer -->
    </div> <!-- End Content -->
  </body>
</html>

<%def name="header()">
  <%include file="header.mako" args="active='tutorials'" />
</%def>


