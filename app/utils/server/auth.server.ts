import { Authenticator } from 'remix-auth';
import { sessionStorage } from './session.server';

export const authenticator = new Authenticator<string>(sessionStorage, {
  sessionKey: 'sessionId',
  throwOnError: true,
});
