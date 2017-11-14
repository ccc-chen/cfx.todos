import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  default: {
    'div'
    'h1'
  }
}

export default ->

  {
    c_div
    c_h1
  } = CFX

  c_div
    className: 'page__hd'
  ,
    c_h1
      className: 'page__title'
      style:
        fontSize: '21px'
        color: '#c7c7cc'
    , 'Todos'