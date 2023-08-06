declare namespace NodeJS {
  export interface ProcessEnv {
    SESSION_SECRET: string;
    DATABASE_URL: string;
  }
}
