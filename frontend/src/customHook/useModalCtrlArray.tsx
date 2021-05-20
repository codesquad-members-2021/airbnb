import { useEffect, useState } from 'react'

type CtrlModal = {
  toggle: any[];
  modal: any;
  init: boolean;
}
const useModalCtrl = ({toggle, modal, init} : CtrlModal):boolean => {
  const [open, setOpen] = useState(init)
  console.log(open)
  useEffect(()=>{
    const handle = (e:MouseEvent):void => {
      const {target} = e
      const toggleTarget = toggle.map(el=>el.current);
      const ModalTarget = modal.current;

      for(let i=0; i<toggleTarget.length; i++){
        if(toggleTarget[i].contains(target)) return setOpen((open)=>!open);
        else if(ModalTarget?.contains(target)) setOpen(true);
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