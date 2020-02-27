FROM nginx:1.17.8

RUN apt update \
	&& apt install -y \
		curl=7.64.0-4+deb10u1 \
		vim=2:8.1.0875-5 \
		openssl=1.1.1d-0+deb10u2 \
	&& rm -f /etc/nginx/conf.d/default.conf
