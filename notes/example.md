# Dillinger

## ***The Last Markdown Editor, Ever***

![screenshot](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS0_wh2KmKYyAmMX2D_tW3K53cPvx9Owl4YUGqkMWq&s)<br>
![image2](https://techcommunity.microsoft.com/t5/image/serverpage/image-id/73066i9A4C68E6EDEAEC11)

Dillinger is a cloud-enabled, mobile-ready, offline-storage compatible,<br>
AngularJS-powered HTML5 Markdown editor.<br>

  * Type some Makrdown on the left
  * see HTML in the right
  * :star: Magic :star:

## Feautres
  * Import a HTML file and watch it magically convert to Markdown
  * Drag and drop images(requires your Dropbox account be linked)
  * import and save files from GitHub, Dropbox, Google Drive and One Drive
  * Drag and drop markdown and HTML files into Dillinger
  * Export documents as Markdown, HTML and PDF

Markdown is a lightweight markup language based on the fromating conventions<br>
that people naturally use in email.<br>
As [John Gruber](https://en.wikipedia.org/wiki/John_Gruber) writes on the [Markdown site](https://en.wikipedia.org/wiki/Markdown)<br>
```python
for i in range(10):
    print(hello)
```
> ***The overriding design goal for Markdown's***<br>
> ***formatting syntax is to make it as readable***<br>
> ***as possible. The idea is that a***<br>
> ***Markdown-formatted document should be***<br>
> ***publishable as-is, as plain text, without***<br>
> ***looking like it's been marked up with tags***<br>
> ***or formatting instructions.***<br>

This text yu see here is *actually- written in Markdown! To get a feel<br>
for Markdown's syntax, type some text into the left window and<br>
watch the results in the right.

## Tech

Dillinger uses a number of open source projects to work properly:
  * [AngularJS](https://angularjs.org/) - HTML enhanced for web apps!
  * [Ace Editor](https://ace.c9.io/) - awesome web-based text editor
  * [markdown-it](https://markdown-it.github.io/) - Markdown parser done right. Fast and east to extend.
  * [Twitter Bootstrap](https://getbootstrap.com/2.0.2/) - great UI boilerplate for modern web apps
  * [node.js](https://nodejs.org/en) - evented I/O for the backend
  * [Express](https://expressjs.com/ko/) - fast node.js network app framework [@tjholowaychuk](https://twitter.com/tjholowaychuk)
  * [Gulp](https://gulpjs.com/) - the streaming build system
  * [Breakdance](https://breakdance.github.io/breakdance/) - HTML

## Installation

Dillinger requires [Node.js](https://nodejs.org/en) v10+ to run.<br>

install the dependencies and devDependencies and start the server.
``` bash
cd dillinger
npm i
node app
```
For production environments⋯
``` Node.js
npm install --production
NODE_ENV=production node app
```
## Plugins

Dillinger is currently extended with the following plugins.<br>
Instructions on how to use them in your own applicateion are linked below.<br>

|**Plugin**|**README**|
|:---|:---|
|Dropbox|[plugins/dropbox/README.md](https://en.wikipedia.org/wiki/Dropbox)|
|GitHub|[plugins/github/README.md](https://en.wikipedia.org/wiki/GitHub)|
|Google Drive|[plugins/googledrive/README.md](https://en.wikipedia.org/wiki/Google_Drive)|
|OneDrive|[plugins/onedrive/README.md](https://en.wikipedia.org/wiki/OneDrive)|
|Medium|[plugins/medium/README.md](https://en.wikipedia.org/wiki/Media_(communication))|

## Development

Want to contribute? Great!<br>


Dillinger uses GUlp + Webpack for fast developing.<br>
Make a change in your file and instantaneously see your updates!<br>


Open your favorite Terminal and run these commands.<br>


First Tab:
``` Node.js
node app
```
Second Tab:
``` Node.js
gulp watch
```
(optional) Third:
``` Node.js
karam test
```