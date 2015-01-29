# Open-a-Link
For demonstrating a mobile Safari viewport + Smart Banner bug

In iOS 8, there appears to be a bug with mobile Safari and the viewport meta tag that can result in a website loading with what looks like a blank page when a Smart Banner meta tag is also present. 

![](http://than.to/10EVw.png)

This behavior has been reproducibly observered with a minimal HTML page and a link in from an iOS app to a URL opened in mobile Safari.

## Steps to Reproduce

1. Go to Settings < Safari and *Clear History and Website Data*

2. Run the *Open a Link* project in this repository.

3. Tap *Test Page with Viewport* to open the example page at http://hobosupply.com/banner-test.html in mobile Safari.

4. You should see a page that looks similar to the above image. Any touch or scroll events will cause the page to snap back 

5. Repeat the above steps 1 & 2. Tap *Test Page without Viewport* to open the example page at http://hobosupply.com/banner-test-no-viewport.html

6. This page should load normally. You should see a green box.

## Notes

When the page loads and displays a smart app banner, the content is loaded into the browser successfully. Inspecting the window with developer tools on a connected Mac shows that the page's DOM is intact and looks like it should.

However, window.scrollY has been observed on several sites as a large negative number, for example *window.scrollY = -577*. This large negative scroll position is what is causing the appearance of a blank page.
