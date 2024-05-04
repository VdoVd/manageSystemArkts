export interface Header {
  "cache-control": string;
  connection: string;
  "content-type": string;
  date: string;
  host: string;
  "x-powered-by": string;
  "set-cookie": string[];
}

export interface PerformanceTiming {
  dnsTiming: number;
  firstReceiveTiming: number;
  firstSendTiming: number;
  redirectTiming: number;
  responseBodyTiming: number;
  responseHeaderTiming: number;
  tcpTiming: number;
  tlsTiming: number;
  totalFinishTiming: number;
  totalTiming: number;
}

export interface loginRes{
  state:number,
  message:string
}

export interface RootObject {
  responseCode: number;
  cookies: string;
  header: Header;
  result: loginRes;
  resultType: number;
  performanceTiming: PerformanceTiming;
}

export interface userClass{
  name:string
  pass:string
}