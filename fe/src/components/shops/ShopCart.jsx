// import React, { useState, useContext } from "react";

//const ShopCart = ({ addToCart, shopItems }) => {
//  const [count, setCount] = useState(0)
//  const increment = () => {
//    setCount(count + 1)
//  }

//  return (
//    <>
//      {shopItems.map((shopItems) => {
//        return (
//          <div className='product mtop'>
//            <div className='img'>
//              <span className='discount'>{shopItems.discount}% Off</span>
//              <img src={shopItems.cover} alt='' />
//              <div className='product-like'>
//                <label>{count}</label> <br />
//                <i className='fa-regular fa-heart' onClick={increment}></i>
//              </div>
//            </div>
//            <div className='product-details'>
//              <h3>{shopItems.name}</h3>
//              <div className='rate'>
//                <i className='fa fa-star'></i>
//                <i className='fa fa-star'></i>
//                <i className='fa fa-star'></i>
//                <i className='fa fa-star'></i>
//                <i className='fa fa-star'></i>
//              </div>
//              <div className='price'>
//                <h4>${shopItems.price}.00 </h4>
//                <button onClick={() => addToCart(shopItems)}>
//                  <i className='fa fa-plus'></i>
//                </button>
//              </div>
//            </div>
//          </div>
//        )
//      })}
//    </>
//  )
//}

//export default ShopCart

import React, { useState, useContext, useEffect } from "react";
import AuthContext from "../../context/AuthProvider";

const ShopCart = ({ shopItems, addToCart }) => {
	const [count, setCount] = useState(0);
	const increment = () => {
		setCount(count + 1);
	};
	const { auth, setTrig } = useContext(AuthContext);
	function isEmpty(obj) {
		for (var x in obj) {
			return false;
		}
		return true;
	}
	const handleTrigger = () => {
		if (isEmpty(auth)) {
			setTrig(true);
		}
	};
	// useEffect(() => {}, [shopItems]);

	return (
		<>
			{shopItems.map((shopItems, index) => {
				return (
					<div className="box">
						<div className="product mtop">
							{/* <> */}

							{/* </> */}
							<div className="img">
								<span className="discount">Stok: {shopItems.stok}</span>
								{/* <span className="discount">{shopItems.stok}</span> */}
								{/* <h3>{shopItems.name}</h3> */}
								<img src={shopItems.foto} alt="" width={250} height={250} />
								{/* <div className="product-like">
									<label>{count}</label> <br />
									<i className="fa-regular fa-heart" onClick={increment}></i>
								</div> */}
							</div>
							<div className="product-details">
								<h3>{shopItems.nama}</h3>
								<div className="rate">
									<h5>{shopItems.deskripsi.slice(0, 30)}</h5>
								</div>
								<div className="price">
									<h4>
										Rp {parseInt(shopItems.harga).toLocaleString("id-ID")}{" "}
									</h4>

									<button
										onClick={() =>
											isEmpty(auth) ? setTrig(true) : addToCart(shopItems)
										}
									>
										<i className="fa fa-plus"></i>
									</button>
								</div>
							</div>
						</div>
					</div>
				);
			})}
		</>
	);
};

export default ShopCart;
