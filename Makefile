materialize:
	git clone --depth 1 https://github.com/Dogfalo/materialize.git /tmp/materialize
	cp -R /tmp/materialize/font/ font
	cp -R /tmp/materialize/js/   _js
	cp -R /tmp/materialize/sass/ _sass
	rm -rf /tmp/materialize

JS_SRC= _js/velocity.min.js \
        _js/hammer.min.js \
        _js/collapsible.js \
        _js/jquery.easing.1.3.js \
        _js/jquery.hammer.js \
        _js/materialbox.js \
        _js/sideNav.js

js/materialize.min.js: ${JS_SRC}
	cat ${JS_SRC} | uglifyjs > ${.TARGET}

404:
	x=`mktemp -d`; cd "$$x"; wget --spider -o wget.log -e robots=off -r -p http://127.0.0.1:4000; grep -B2 404 wget.log; rm -r "$$x"
