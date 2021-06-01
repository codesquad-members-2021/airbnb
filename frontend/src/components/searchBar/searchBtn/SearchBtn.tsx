import { createStyles, makeStyles, Theme } from '@material-ui/core/styles'
import SearchIcon from '@material-ui/icons/Search'
import Button from '@material-ui/core/Button'
import { PlaceSection } from '../../../style/BarStyle'
import { RecoilValueGroup } from '../../../customHook/atoms'
import useAxios from '../../../customHook/useAxios'
const useStyles = makeStyles((theme: Theme) =>
  createStyles({
    button: {
      margin: theme.spacing(1),
      borderRadius: 30,
    },
  })
)

function SearchBtn() {
  const classes = useStyles()
  let MIN, MAX
  const {
    placeToSearch,
    checkIn,
    checkOut,
    priceMin,
    minFeePercent,
    priceMax,
    maxFeePercent,
    adult,
    child,
    baby,
  } = RecoilValueGroup()
  if (typeof priceMin === 'number') {
    MIN = priceMin + minFeePercent
    MAX = priceMax - maxFeePercent
  }

  // const state = useAxios(() =>
  //   getHouseData(placeToSearch, checkIn, checkOut, MIN, MAX, adult, child, baby)
  // )
  const handleClick = () => {}

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
