pageextension 50102 indicator extends "Item List"
{
    layout
    {
        addafter(InventoryField)
        {
            field(inv_indicator; Rec.inv_indicator)
            {
                ApplicationArea = all;
                ToolTip = 'specified the level of inventory';
                Editable = false;


            }

        }

    }
    trigger OnAfterGetRecord()
    begin
        if Rec.Inventory >= 10
         then
            rec.inv_indicator := 'safe'
        else
            if Rec.Inventory < 0
           then
                rec.inv_indicator := 'emergency'
            else
                rec.inv_indicator := 'low'
    end;


    // Add changes to page layout here
}


