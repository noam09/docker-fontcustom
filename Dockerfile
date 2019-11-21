FROM frolvlad/alpine-python3:latest

RUN apk add \
	--no-cache \
	--repository http://dl-cdn.alpinelinux.org/alpine/edge/community  \
	--repository http://dl-cdn.alpinelinux.org/alpine/edge/testing \
	bash \
	git \
	build-base \
	ruby \
	ruby-bundler \
	ruby-dev \
	woff2 \
	zlib-dev \
	fontforge \
	&& git clone https://github.com/bramstein/sfnt2woff-zopfli.git sfnt2woff-zopfli \
	&& cd sfnt2woff-zopfli \
	&& make \
	&& mv sfnt2woff-zopfli /usr/local/bin/sfnt2woff \
	# && git clone --recursive https://github.com/google/woff2.git \
	# && cd woff2 \
	# && make clean all \
	# && mv woff2_compress /usr/local/bin/ \
	# && mv woff2_decompress /usr/local/bin/ \
	&& gem install --no-document fontcustom \
	&& rm -rf sfnt2woff-zopfli woff2 \
	&& gem cleanup \
	&& apk del \
		ruby-dev \
		build-base \
		git \
		ruby-bundler \
	&& mkdir input output

WORKDIR "/output"
ENTRYPOINT ["fontcustom"]
CMD ["help"]
