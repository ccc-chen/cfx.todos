import { prefixDom } from 'cfx.dom'
import Title from './title'
import Input from './input'
import Checkbox from './checkbox'

CFX = prefixDom {
  'div'
  Title
  Input
  Checkbox
}

export default ->

  {
    c_div
    c_Title
    c_Input
    c_Checkbox
  } = CFX

  c_div {}
  ,
    c_Title {}
    c_Input {}
    c_Checkbox {}


        
          
           



   