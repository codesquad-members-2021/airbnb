import { PlaceSection } from '../../../style/BarStyle'
import Button from '@material-ui/core/Button'
import { createStyles, makeStyles, Theme } from '@material-ui/core/styles'
import SearchIcon from '@material-ui/icons/Search'
import { useState } from 'react'
import { useRecoilValue } from 'recoil'
import {
  clickedPlace,
  checkInMessage,
  checkOutMessage,
  defaultValue,
} from '../../../customHook/atoms'

const useStyles = makeStyles((theme: Theme) =>
  createStyles({
    button: {
      margin: theme.spacing(1),
      borderRadius: 30,
    },
  })
)

const SearchBtn = () => {
  const classes = useStyles()
  const [searchable, setSearchable] = useState(false)

  const placeToSearch = useRecoilValue(clickedPlace)
  // const checkIn = useRecoilValue(checkInMessage)
  // const checkOut = useRecoilValue(checkOutMessage)
  // const FeeMin = useRecoilValue(FeeMin)
  // const FeeMax = useRecoilValue(FeeMax)
  // const adult = useRecoilValue(personnelAudult)
  // const adult = useRecoilValue(personnelAudult)
  // const child = useRecoilValue(personnelChild)
  // const baby = useRecoilValue(personnelBaby)

  const handleClick = () => {
    //api검색요청하기
  }
  if (placeToSearch !== defaultValue.placeToSearch && !searchable) setSearchable(true)

  return (
    <PlaceSection>
      <Button
        onClick={handleClick}
        variant='contained'
        color='secondary'
        className={classes.button}
        startIcon={<SearchIcon />}
      >
        검색
      </Button>
    </PlaceSection>
  )
}

export default SearchBtn
