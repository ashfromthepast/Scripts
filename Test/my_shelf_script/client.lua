-- test for custom mlo usage???
local shelfModels = {
    `prop_cs_shelves`,
    `prop_cs_shelf_01`,
    `prop_cs_shelf_02`,
    `prop_shelves_03`,
    `prop_shelves_04`,
    `prop_shelves_05`,

    -- store shelves
    `v_ret_247shelves05`,
    `v_ret_247shelves02`,
    `v_ret_247shelves04`,
    `v_ret_247shelves03`,
    `v_ret_247shelves01`,

    -- liquor fridges
    `prop_bar_fridge_02`,
    `prop_bar_fridge_01`,
    `prop_bar_fridge_04`,
    `prop_bar_fridge_03`,
    `v_ret_ml_fridge`,
    `v_ilev_mm_fridgeint`,
    `prop_bar_beerfridge_01`,
    `v_ret_ml_liqshelfc`,
    `ba_prop_battle_bar_beerfridge_01`,
    `h4_prop_battle_bar_fridge_01`,
    `ba_vip_bar_fridge`,
    `h4_prop_battle_bar_fridge_02`,
    `v_68_fridgefood`,
    `prop_vend_fridge01`,

    -- misc store props
    `v_ret_247_cigs`,
    `v_ret_247_sweetcount`,

    -- new store foods
    `v_ret_247_noodle1`,
    `v_ret_ml_beerlog2`,
    `v_ret_ml_chips2`,
    `v_ret_ml_beerlog1`,
    `v_ret_ml_beerpis1`,
    `v_ret_247_ketchup2`,
    `v_ret_ml_sweet9`,
    `v_ret_ml_sweet2`,
    `v_ret_ml_sweet4`,
    `v_ret_247_noodle3`,
    `v_ret_gassweets`,
    `v_ret_247_choptom`,
    `v_ret_247_cereal1`,
    `v_ret_247_ketchup1`,
    `v_ret_ml_beerpride`,
    `v_ret_ml_sweet3`,
    `v_ret_247_eggs`,
    `v_ret_247_fruit`,

    -- misc foods
    `v_ret_247_popcan2`,
    `v_ret_247_tuna`,
    `v_ret_247_swtcorn2`,
    `v_ret_247_mustard`,
    `v_ret_247_tomsoup1`,
    `v_ret_247_popbot4`,
    `v_ret_247_noodle2`,
    `v_ret_247_bread1`,
    `v_ret_247_flour`,
    `v_ret_247_vegsoup1`
}



exports.ox_target:addModel(shelfModels, {
    {
        name = 'grab_item',
        icon = 'fa-solid fa-hand',
        label = 'Grab Item',
        onSelect = function()
            TriggerServerEvent('my_shelf_script:grabItem')
        end,
    }
})