FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IHZuYy1kZXNrdG9wLWFwYgpkZXNjcmlwdGlvbjogVGhpcyBpcyBh\
IHNhbXBsZSBhcHBsaWNhdGlvbiBnZW5lcmF0ZWQgYnkgYXBiIGluaXQKYmluZGFibGU6IEZhbHNl\
CmFzeW5jOiBvcHRpb25hbAptZXRhZGF0YToKICBkaXNwbGF5TmFtZTogIlZOQyBEZXNrdG9wIChB\
UEIpIgogIGRlcGVuZGVuY2llczoKICAtIGRvY2tlci5pby9hbnNpYmxlcGxheWJvb2tidW5kbGUv\
dm5jLWRlc2t0b3A6ZjI4CiAgLSBkb2NrZXIuaW8vYW5zaWJsZXBsYXlib29rYnVuZGxlL3ZuYy1k\
ZXNrdG9wOmYyNwpwbGFuczoKICAtIG5hbWU6IGYyOAogICAgZGVzY3JpcHRpb246IFJ1biBhIGRl\
c2t0b3Agb2YgeW91ciBjaG9pY2Ugb24gRmVkb3JhIDI4CiAgICBmcmVlOiBUcnVlCiAgICBtZXRh\
ZGF0YToge30KICAgIHBhcmFtZXRlcnM6CiAgICAtIG5hbWU6IHZuY3Bhc3MKICAgICAgdGl0bGU6\
IFZOQyBQYXNzd29yZAogICAgICB0eXBlOiBzdHJpbmcKICAgICAgcmVxdWlyZWQ6IHRydWUKICAg\
IC0gbmFtZTogZGUKICAgICAgdGl0bGU6IERlc2t0b3AgRW52aXJvbm1lbnQKICAgICAgdHlwZTog\
ZW51bQogICAgICBlbnVtOiBbJ0Npbm5hbW9uJywgJ2Z2d20nLCAnaTMnLCAnS0RFJywgJ0xYREUn\
LCAnTFhRdCcsICdNQVRFJywgJ1N1Z2FyJywgJ3R3bScsICdYZmNlJ10KICAgICAgZGVmYXVsdDog\
J1hmY2UnCiAgLSBuYW1lOiBmMjcKICAgIGRlc2NyaXB0aW9uOiBSdW4gYSBEZXNrdG9wIG9mIHlv\
dXIgY2hvaWNlIG9uIEZlZG9yYSAyNyAKICAgIGZyZWU6IFRydWUKICAgIG1ldGFkYXRhOiB7fQog\
ICAgcGFyYW1ldGVyczogCiAgICAtIG5hbWU6IHZuY3Bhc3MKICAgICAgdGl0bGU6IFZOQyBQYXNz\
d29yZAogICAgICB0eXBlOiBzdHJpbmcKICAgICAgcmVxdWlyZWQ6IHRydWUKICAgIC0gbmFtZTog\
ZGUKICAgICAgdGl0bGU6IERlc2t0b3AgRW52aXJvbm1lbnQKICAgICAgdHlwZTogZW51bQogICAg\
ICBlbnVtOiBbJ0Npbm5hbW9uJywgJ2Z2d20nLCAnaTMnLCAnS0RFJywgJ0xYREUnLCAnTFhRdCcs\
ICdNQVRFJywgJ1N1Z2FyJywgJ3R3bScsICdYZmNlJ10KICAgICAgZGVmYXVsdDogJ1hmY2UnCgo="


COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb