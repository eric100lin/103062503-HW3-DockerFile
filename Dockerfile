FROM debian:jessie
MAINTAINER Tzu Hsiang Lin <thlin@pllab.cs.nthu.edu.tw>

# Start of instructions
RUN apt-get update && apt-get install -y apache2 && \
    echo "/etc/init.d/apache2 start" >> ~/.bashrc && \
    echo "<!DOCTYPE html PUBLIC "-//IETF//DTD HTML 2.0//EN">" > /var/www/html/index.html && \
    echo "<HTML>" >> /var/www/html/index.html && \
    echo "   <HEAD>" >> /var/www/html/index.html && \
    echo "      <TITLE>" >> /var/www/html/index.html && \
    echo "         103062503 VM HW3 " >> /var/www/html/index.html && \
    echo "      </TITLE>" >> /var/www/html/index.html && \
    echo "   </HEAD>" >> /var/www/html/index.html && \
    echo "<BODY>" >> /var/www/html/index.html && \
    echo "   <H1>103062503 VM HW3</H1>" >> /var/www/html/index.html && \
    echo "   <P>This is very minimal "hello world" HTML document.</P> " >> /var/www/html/index.html && \
    echo "</BODY>" >> /var/www/html/index.html && \
    echo "</HTML>" >> /var/www/html/index.html

EXPOSE 80
#CMD ["update-rc.d", "apache2", "enable"]
#CMD ["/etc/init.d/apache2", "start"]
ENTRYPOINT ["/bin/bash"]
