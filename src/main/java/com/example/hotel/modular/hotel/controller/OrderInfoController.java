package com.example.hotel.modular.hotel.controller;

import com.example.hotel.core.common.page.DataGridDataSource;
import com.example.hotel.core.common.page.JsonData;
import com.example.hotel.core.common.page.PageBean;
import com.example.hotel.modular.hotel.model.OrderInfo;
import com.example.hotel.modular.hotel.service.OrderInfoService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**

 * @Description:
 */
@RestController
@RequestMapping("/orderinfo")
@CrossOrigin
public class OrderInfoController {

    @Resource
    private OrderInfoService orderInfoService;

    @PostMapping("/save")
//    @LoginRequired
    public JsonData saveOrderInfo(OrderInfo orderInfo) {
        int count = orderInfoService.saveOrderInfo(orderInfo);
        if (count > 0) {
            return JsonData.success(count, "预定成功");
        } else {
            return JsonData.fail("预定失败");
        }

    }

    @GetMapping("/listById")
    public JsonData listById(@RequestParam(value = "userId") Integer userId) {

        return JsonData.success(orderInfoService.selectOrderInfoListByUserId(userId));

    }
    @GetMapping("/update")
    public JsonData updateOrderById(@RequestParam(value = "orderId") Integer orderId){
        OrderInfo orderInfo1 = orderInfoService.selectOrderInfoById(orderId);
        if (orderInfo1.getOrderStatus() != 0){
            return JsonData.fail("此订单非待入住");
        }
        OrderInfo orderInfo = new OrderInfo();
        orderInfo.setOrderId(orderId);
        orderInfo.setOrderStatus(3);
        return JsonData.success(orderInfoService.updateOrderById(orderId));
    }

    @PostMapping("/list")
//    @LoginRequired
    public DataGridDataSource<OrderInfo> getOrderInfoList(@RequestParam(value = "page", required = false, defaultValue = "1") Integer page,
                                                          @RequestParam(value = "rows", required = false, defaultValue = "5") Integer rows) {

        PageBean pageBean = new PageBean(page, rows);
        Map<String, Object> map = new HashMap<>();
        map.put("start", pageBean.getStart());
        map.put("size", pageBean.getPageSize());
        List<OrderInfo> orderInfoList = orderInfoService.selectOrderInfoList(map);

        int totalOrderInfo = orderInfoService.getTotalOrderInfo(map);
        DataGridDataSource<OrderInfo> dataGridDataSource = new DataGridDataSource<>();
        dataGridDataSource.setTotal(totalOrderInfo);
        dataGridDataSource.setRows(orderInfoList);
        return dataGridDataSource;
    }


//    @GetMapping("/getInfoByNameAndPhone")
//    public JsonData getInfoByNameAndPhone(@RequestParam(value = "name") String name, @RequestParam(value = "phone") String phone) {
//        OrderInfo orderInfo = orderInfoService.selectOrderInfoByNameAndPhone(name, phone);
//        if (orderInfo != null) {
//            return JsonData.success(orderInfo);
//        } else {
//            return JsonData.fail("无法找到预约订单");
//        }
//
//    }


}
