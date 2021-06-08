import { useEffect, useReducer, useCallback } from 'react'
import { AxiosResponse } from 'axios'
import { reducer } from './reducer'

function useAxios(callback: () => Promise<AxiosResponse>, deps = [], skip = false) {
  const [state, dispatch] = useReducer(reducer, {
    loading: false,
    data: null,
    error: null,
  })

  const fetchData = useCallback(async () => {
    dispatch({ type: 'LOADING' })
    try {
      const response = await callback()
      dispatch({ type: 'SUCCESS', data: response.data })
      return response
    } catch (e) {
      dispatch({ type: 'ERROR', error: e })
    }
  }, [callback])

  useEffect(() => {
    if (skip) return
    fetchData()
  }, deps)

  return { state, fetchData }
}
export default useAxios
