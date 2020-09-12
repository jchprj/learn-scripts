// https://plugins.jenkins.io/slack/

slackSend channel: '#channel', message: 'Test msg from Jenkins', teamDomain: 'team', token: 'token'

slackSend channel: '#channel', message: 'Test msg from Jenkins', teamDomain: 'team', tokenCredentialId: 'tokenCredentialId'

slackSend botUser: false, channel: '#channel', iconEmoji: 'https://img.icons8.com/color/who', message: 'Test msg from Jenkins', notifyCommitters: false, teamDomain: 'team', token: 'token', username: 'Who am I?'