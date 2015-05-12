FROM ubuntu:14.04
MAINTAINER Tzu Hsiang Lin <thlin@pllab.cs.nthu.edu.tw>

# Start of instructions
RUN apt-get update && apt-get install -y apache2
RUN echo "/etc/init.d/apache2 start" >> ~/.bashrc
RUN echo "<!DOCTYPE html PUBLIC "-//IETF//DTD HTML 2.0//EN">" > /var/www/html/index.html
RUN echo "<HTML>" >> /var/www/html/index.html
RUN echo "   <HEAD>" >> /var/www/html/index.html
RUN echo "      <TITLE>" >> /var/www/html/index.html
RUN echo "         103062503 VM HW3 " >> /var/www/html/index.html
RUN echo "      </TITLE>" >> /var/www/html/index.html
RUN echo "   </HEAD>" >> /var/www/html/index.html
RUN echo "<BODY>" >> /var/www/html/index.html
RUN echo "   <H1>103062503 VM HW3</H1>" >> /var/www/html/index.html
RUN echo "   <P>This is very minimal "hello world" HTML document.</P> " >> /var/www/html/index.html
RUN echo "</BODY>" >> /var/www/html/index.html
RUN echo "</HTML>" >> /var/www/html/index.html

EXPOSE 80
#CMD ["update-rc.d", "apache2", "enable"]
#CMD ["/etc/init.d/apache2", "start"]
ENTRYPOINT ["/bin/bash"]
