import { useState, useEffect } from 'react'
import { TiDelete } from 'react-icons/ti'
import IconButton from '@material-ui/core/IconButton'
import { SetterOrUpdater } from 'recoil'

function useXclick(state: any, setStates: SetterOrUpdater<any>[], defaultValue: string) {
  const [viewX, setViewX] = useState(false)
  const X_handleClick = () => {
    setStates.map((setState, idx) => (idx === 0 ? setState(defaultValue) : setState(0)))
  }

  useEffect(() => {
    state && state !== defaultValue ? setViewX(true) : setViewX(false)
  }, [state])

  const RenderXbtn = () => {
    return viewX ? (
      <IconButton onClick={X_handleClick}>
        <TiDelete />
      </IconButton>
    ) : null
  }
  return RenderXbtn
}

export default useXclick
