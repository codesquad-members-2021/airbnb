import { useEffect, useState, useRef } from 'react'

type CtrlModal = {
  toggle:any;
  modal: any;
  init: boolean;
}
const useModalCtrl = ({toggle, modal, init} : CtrlModal):boolean => {
  const [open, setOpen] = useState(init)
  useEffect(()=>{
    const handle = (e:MouseEvent):void => {
      const {target} = e
      const toggleTarget = toggle.current;
      const ModalTarget = modal.current;
      if (toggleTarget||ModalTarget){
        if(toggleTarget?.contains(target)) setOpen((open)=>!open)
        else if(ModalTarget?.contains(target)) setOpen(true)
        else setOpen(false)        
      }
    }
    document.addEventListener('click', handle)
    return ()=>{
      document.removeEventListener('click',handle)
    }
  },[])

  return open;
}

export default useModalCtrl;