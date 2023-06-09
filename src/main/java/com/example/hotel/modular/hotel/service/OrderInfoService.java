package com.example.hotel.modular.hotel.service;

import com.example.hotel.modular.hotel.model.OrderInfo;
import com.example.hotel.modular.hotel.model.RoomInfo;

import java.util.List;
import java.util.Map;

/**

 * @Description:
 */
public interface OrderInfoService {
    int saveOrderInfo(OrderInfo orderInfo);

    int updateOrderInfo(OrderInfo orderInfo);

    List<OrderInfo> selectOrderInfoListByUserId(Integer userId);

    List<OrderInfo> selectOrderInfoList(Map<String, Object> map);

    int getTotalOrderInfo(Map<String, Object> map);

    OrderInfo selectOrderInfoByNameAndPhone(String name, String phone);

    OrderInfo selectOrderInfoById(Integer orderId);

    int updateOrderById(Integer orderId);

}
