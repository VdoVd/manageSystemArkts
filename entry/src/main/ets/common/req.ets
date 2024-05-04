import { http } from '@kit.NetworkKit'
import { loginRes } from '../model/loginModel'

let baseUrl='http://192.168.40.32:8000/'

let req=http.createHttp()
export const LoginReq = async (name:string,pass:string) => {

  const res=await req.request(`${baseUrl}login`,{

    header:{
      'Content-Type': 'application/json'
    },

    method:http.RequestMethod.POST,

    extraData:{
      name:name,
      pass:pass
    }

  })

  let result=(JSON.parse(res.result.toString()) as loginRes)

  return result
}