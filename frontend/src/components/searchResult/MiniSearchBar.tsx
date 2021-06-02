import styled from 'styled-components'
import SearchIcon from '@material-ui/icons/Search'
import IconButton from '@material-ui/core/IconButton'
import { IParams } from '../../Interface'
import { RecoilValueGroup, RecoilSetStateGroup, defaultValue } from '../../customHook/atoms'
import { FilterDateToString } from '../../customHook/useDateInfo'
interface IMiniProps {
  setClicked: (value: React.SetStateAction<boolean>) => void
  inputData: IParams
}

export const setScheduleMsg = (
  checkIn: string | number | undefined,
  checkOut: string | number | undefined
) => {
  let msg =
    checkIn !== defaultValue.checkIn && checkOut !== defaultValue.checkOut
      ? FilterDateToString(checkIn) + '-' + FilterDateToString(checkOut)
      : checkIn
  return msg
}

function MiniSearchBar({ setClicked, inputData }: IMiniProps) {
  const handleClick = () => {
    setClicked(true)
  }
  RecoilSetStateGroup(inputData)
  const { place, checkIn, checkOut, guestMsg } = RecoilValueGroup()

  return (
    <SearchBar>
      <div onClick={handleClick}>{place}</div>
      <div onClick={handleClick}>{setScheduleMsg(checkIn, checkOut)}</div>
      <div onClick={handleClick}>{guestMsg}</div>
      <IconButton
        color='secondary'
        className={'routerBtn'}
        component='span'
        size='small'
        style={{ backgroundColor: 'pink' }}
      >
        <SearchIcon />
      </IconButton>
    </SearchBar>
  )
}

const SearchBar = styled.div`
  display: flex;
  width: 410px;
  height: 50px;
  background-color: ${({ theme }) => theme.color.white};
  border: 1px solid ${({ theme }) => theme.color.grey_2};
  border-radius: 50px;
  padding: 0 14px;
  align-items: center;
  div {
    font-size: ${({ theme }) => theme.fontSize.super_sm};
    padding: 0 16px;
    width: 100px;
    text-align: center;
    border-right: 1px solid ${({ theme }) => theme.color.grey_2};
    &: nth-child(3) {
      border-right: none;
    }
  }
`

export default MiniSearchBar
