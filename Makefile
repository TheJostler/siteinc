name=sic
dest=/usr/bin
cc=gcc
build = build
build.mkdir = if [ ! -d $(build) ];then mkdir $(build);fi
objects = $(build)/obj
objects.mkdir = if [ ! -d $(objects) ];then mkdir $(objects);fi
media = media
media.o = $(build)/media
media.o.mkdir = if [ ! -d $(media.o) ];then mkdir $(media.o);fi
server = $(wildcard server/*.c)
server.o = $(patsubst %.c, $(objects)/%.o, $(server))
server.mkdir = if [ ! -d $(objects)/server ];then mkdir $(objects)/server;fi
views = $(wildcard views/*.c)
views.o = $(patsubst %.c, $(objects)/%.o, $(views))
views.mkdir = if [ ! -d $(objects)/views ];then mkdir $(objects)/views;fi
images := $(wildcard $(media)/*.jpg)
images.b64 = $(patsubst %.jpg, $(media.o)/%.jpg.b64, $(images))

$(objects)/%.o: %.c
	@$(build.mkdir)
	@$(objects.mkdir)
	@$(server.mkdir)
	@$(views.mkdir)
	$(cc) -c -o $@ $<

$(name): $(server.o) $(views.o)
	$(cc) -o $@ $^ 
	@make image

image:
	@$(build.mkdir)
	@$(media.o.mkdir)
	@for file in $(images); do if [ ! -f $(build)/$$file.b64 ];then cat $$file | base64 > $(build)/$$file.b64; echo Encoded: $$file;fi;done

js:
	@npm run build --prefix site	
	@./convert_html.sh index.html render_index0html

build:
	@make image
	@make js
	@make

clean:
	rm -r $(build) $(name)
	rm -r site/build