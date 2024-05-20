# Dillinger
## *The Last Markdown Editor, Ever*
![badge_img1][img_path "N"] (실제 삽입은 못했습니다.)  
![badge_img2][img_path "build"]

Dillinger is a cloud-enabled, mobile-ready, offline-storage compatible,<br>
AngularJS-powered HTML5 Markdown editor.
* Type some Markdown on the left
* See HTML in the right
* :star2:Magic:star2:

# Features
* Import a HTML file and watch it magically convert to Markdown
* Drag and Drop images (requires your Dropbox account be linked)
* Import and save files from Github, Dropbox, Google Drive and One Drive
* Drag and drop markdown and HTML files into Dillinger
* Export documents as Markdown, HTML and PDF

Markdown is a lightweight markup language based on the formatting conventions<br> that people naturally use in email.<br>
As [Gruber writes](naver.com "gruber") on the [Markdown site](naver.com "markdown")
```py
for i in range(10):
  print(hello)
```
> *The overriding design goal for Markdown's<br>
formatting syntax is to make it as readable<br>
as possible. The idea is that a<br>
Markdown-formatteed document should be<br>
publishable as-is, as plain text, without<br>
looking like it's been marked up with tags<br>
or formatting instructions.*

This text you see here is *actually-written in Markdown! To get a feel<br>
for Markdown's syntax, type some text into the left window and<br>
watch the results in the right.

## Tech
Dillinger uses a number of open source projects to work propely:

* [AngularJS](www.naver.com "angular") - HTML enhanced for web apps!
* [Ace Editor](www.naver.com "editor") - awesome web-based text editor
* [markdown-it](www.naver.com "markdown") - Markdown parser done right. Fast and easy to extend.
* [Twitter Bootstrap](naver.com "boot") - great UI bollerplate for modern web apps
* [node.js](naver.com "node") - evented I/O for the backend
* [Express](naver.com "express") - fast node.js network app framework [@tjholowaychuk](naver.com "chuk")
* [Gulp](naver.com "gulp") - the streaming build system
* [Breakdance](naver.com "dance") - HTML

## Installation
Dillinger requires [Node.Js](naver.com "node") v10+ to run.  
<br>
Install the dependencies and devDependencies and start the server.
```sh
cd dillinger
npm i
node app
```

For production environments...

```sh
npm install --production
NODE_ENV=production node app
```

## Plugins
Dillinger is currently extended with the following plugins.  
Instructions on how to use them in your own application are linked below.

|Plugin|README|
|---|---|
|Dropbox|[plugins/dropbox/README.md](readme.md "dropbox")|
|Github|[plugins/github/README.md](readme.md "github")|
|Google Drive|[plugins/googledrive/README.md](readme.md "googledrive")|
|OneDrive|[plugins/onedrive/README.md](readme.md "one")|
|Medium|[plugins/medium/README.md](readme.md "midium")|

## Development
Want to contribute? Great!  
<br>
Dillinger uses Gulp + Webpack for fast developing.  
Make a change in your file and instantaneously see your updates!  
<br>
Open your favorite Terminal and run these commands.  
<br>

First Tab:
```sh
node app
```

Second Tab:
```sh
gulp watch
```

(optional) Third:
```sh
karma test
```