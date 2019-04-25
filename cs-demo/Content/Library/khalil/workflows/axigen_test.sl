namespace: khalil.workflows
flow:
  name: axigen_test
  workflow:
    - send_mail:
        do:
          io.cloudslang.base.mail.send_mail:
            - hostname: 192.168.1.17
            - port: '25'
            - from: mf_admin@blackbox.net
            - to: mf_admin@blackbox.net
            - subject: CloudSlang via IDEA
            - body: Email from IntelliJ IDEA
            - html_email: 'true'
            - username: mf_admin@blackbox.net
            - password:
                value: MF1nvent
                sensitive: true
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: FAILURE
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      send_mail:
        x: 134
        y: 131
        navigate:
          2180d92b-ba99-db0a-a0c9-6d28192182c0:
            targetId: 2b9bc40f-62ef-2cb5-ee69-9f6faa8d5f73
            port: SUCCESS
          254775ec-8d42-4042-3a87-c681eb7733d8:
            targetId: a193ba8c-f763-4f8b-d713-b5a6b0324a6c
            port: FAILURE
    results:
      SUCCESS:
        2b9bc40f-62ef-2cb5-ee69-9f6faa8d5f73:
          x: 411
          y: 120
      FAILURE:
        a193ba8c-f763-4f8b-d713-b5a6b0324a6c:
          x: 284
          y: 273
