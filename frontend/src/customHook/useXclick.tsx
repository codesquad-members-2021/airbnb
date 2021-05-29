import { useState, useEffect } from 'react'
import { TiDelete } from 'react-icons/ti'
import IconButton from '@material-ui/core/IconButton'
import { SetterOrUpdater } from 'recoil'

function useXclick(state: any, setStates: SetterOrUpdater<any>[], defaultValue: string) {
  const [viewX, setViewX] = useState(false)
  const X_handleClick = () => {
    setStates.length > 1
      ? setStates.map((setState) => setState(0))
      : setStates.map((setState) => setState(defaultValue))
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
