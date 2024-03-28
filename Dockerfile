FROM alpine:latest

# RUN apk add --no-cache openssh httpd

# RUN echo 'c:$6$rounds=656000$22111357$zQFq82.bvj4VjJ8Z5d5Q6zqdXz.d/QFQKqVcJ9kZb5p3.kXu5vTZ1uQwYRvTaQv3bv3zg.' | chpasswd

# RUN mkdir -p /root/.ssh && chmod 700 /root/.ssh

# RUN ssh-keygen -A

# RUN rc-service sshd start && rc-service httpd start

CMD ["tail", "-f", "/var/log/httpd/access.log"]
